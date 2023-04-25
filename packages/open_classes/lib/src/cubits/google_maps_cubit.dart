import 'dart:async';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_design_system/theta_design_system.dart';

class GoogleMapsCubit extends Cubit<GoogleMapsState> {
  GoogleMapsCubit({final GoogleMapsState? initialState})
      : super(
          initialState ??
              const GoogleMapsInitialState(
                GoogleMapsUiModel(
                  paths: <Polyline>{},
                  markers: <Marker>{},
                  cameraPosition: CameraPosition(
                    target: LatLng(
                      0,
                      0,
                    ),
                    zoom: 10,
                  ),
                  style: kStandardMap,
                ),
              ),
        );

  StreamSubscription? tracking;

  Future<void> onLoadData(
    final List<dynamic> markersDataset,
    final GoogleMapsConfigNames configNames,
    final List<DatasetObject> datasets,
    final BuildContext context,
  ) async {
    try {
      final initialPositionLat = num.parse(configNames.initialPositionLat);
      final initialPositionLng = num.parse(configNames.initialPositionLng);
      final initialZoom = double.parse(configNames.initialMapZoomLevel);
      final mapStyle = getMap(configNames.mapStyle);

      onEmitNewCameraPosition(
        initialPositionLat.toDouble(),
        initialPositionLng.toDouble(),
        initialZoom,
      );
      onEmitNewMapStyle(configNames.mapStyle);

      final isLocationEnabled = await Geolocator.isLocationServiceEnabled();
      Position? location;

      if (isLocationEnabled) {
        await Geolocator.requestPermission();
        location = await Geolocator.getCurrentPosition();

        if (configNames.trackMyLocation) {
          await tracking?.cancel();
          tracking = Geolocator.getPositionStream(
            locationSettings: const LocationSettings(
              distanceFilter: 20,
            ),
          ).listen(
            (final event) async {
              // emit new location
              unawaited(
                _buildMarkersAndPath(
                  markersDataset: markersDataset,
                  initialPositionLat: event.latitude,
                  initialPositionLng: event.longitude,
                  zoom: initialZoom,
                  mapStyle: mapStyle,
                  userLocationLat: event.latitude,
                  userLocationLng: event.longitude,
                  googleMapsKey: configNames.googleMapsKey,
                  configNames: configNames,
                  datasets: datasets,
                  moveCameraToUserLocation: true,
                ),
              );
            },
          );
        } else {
          await tracking?.cancel();
        }
      }
      await _buildMarkersAndPath(
        markersDataset: markersDataset,
        initialPositionLat: initialPositionLat,
        initialPositionLng: initialPositionLng,
        zoom: initialZoom,
        mapStyle: mapStyle,
        userLocationLat: location?.latitude ?? initialPositionLat.toDouble(),
        userLocationLng: location?.longitude ?? initialPositionLng.toDouble(),
        googleMapsKey: configNames.googleMapsKey,
        configNames: configNames,
        datasets: datasets,
        moveCameraToUserLocation: configNames.trackMyLocation,
      );
    } catch (e) {
      emit(
        GoogleMapsErrorState(
          GoogleMapsUiModel(
            paths: state.uiModel.paths,
            markers: state.uiModel.markers,
            cameraPosition: state.uiModel.cameraPosition,
            style: state.uiModel.style,
          ),
        ),
      );
    }
  }

  Future<void> _buildMarkersAndPath({
    required final List<dynamic> markersDataset,
    required final num initialPositionLat,
    required final num initialPositionLng,
    required final double zoom,
    required final String mapStyle,
    required final double userLocationLat,
    required final double userLocationLng,
    required final String googleMapsKey,
    required final GoogleMapsConfigNames configNames,
    required final List<DatasetObject> datasets,
    required final bool moveCameraToUserLocation,
  }) async {
    final polyLines = <Polyline>{};
    final mapMarkers = <Marker>{};

    final cms = ThetaDB.I.db;

    try {
      if (kDebugMode) {
        print('ADD LOCATION MARKER!${configNames.showMyLocationMarker}');
      }
      if (configNames.showMyLocationMarker) {
        if (kDebugMode) {
          print('ADD LOCATION MARKER!1');
        }
        mapMarkers.add(
          Marker(
            markerId: const MarkerId('myLocation'),
            position: LatLng(
              userLocationLat,
              userLocationLng,
            ),
            //! Integrate onTap
            //onTap:
          ),
        );
      }
    } catch (e, st) {
      if (kDebugMode) {
        print('Google Maps Show My Location Error.');
        print(e);
        print(st);
      }
    }

    for (final element in markersDataset) {
      try {
        final markerDrawPath =
            ((element[configNames.drawPathFromUserGeolocationToMarker]
                            as String?) ??
                        'false')
                    .toLowerCase() ==
                'true';
        final markerId = element[configNames.markerId] as String;
        final markerLatitude =
            num.parse(element[configNames.markerLocationLat] as String);
        final markerLongitude =
            num.parse(element[configNames.markerLocationLng] as String);
        final markerIconUrl = element[configNames.markerIconUrl] as String?;
        final markerIconWidth =
            num.parse(element[configNames.markerIconWidth] as String? ?? '70');
        final markerIconHeight =
            num.parse(element[configNames.markerIconHeight] as String? ?? '70');
        BitmapDescriptor? markerIcon;

        try {
          if (markerIconUrl != null) {
            final markerImageFile = await http.get(Uri.parse(markerIconUrl));
            final codec = await instantiateImageCodec(
              markerImageFile.bodyBytes,
              targetWidth: markerIconWidth.toInt(),
              targetHeight: markerIconHeight.toInt(),
            );
            final frameInfo = await codec.getNextFrame();
            final byteData = await frameInfo.image.toByteData(
              format: ImageByteFormat.png,
            );
            final resizedMarkerImageBytes = byteData!.buffer.asUint8List();
            markerIcon = BitmapDescriptor.fromBytes(resizedMarkerImageBytes);
          }
        } catch (e, st) {
          if (kDebugMode) {
            print(e);
            print(st);
          }
        }
        try {
          if (markerDrawPath) {
            final mLat = markerLatitude.toDouble();
            final mLon = markerLongitude.toDouble();

            final polylinePoints = PolylinePoints();

            final result = await polylinePoints.getRouteBetweenCoordinates(
              googleMapsKey,
              PointLatLng(userLocationLat, userLocationLng),
              PointLatLng(
                mLat,
                mLon,
              ),
              requestProxy:
                  (final String url, final Map<String, String> headers) async {
                return cms.proxy(url, headers);
              },
            );

            if (result.points.isNotEmpty) {
              polyLines.add(
                Polyline(
                  color: HexColor(configNames.pathColor),
                  polylineId: PolylineId(markerId),
                  points: result.points
                      .map(
                        (final e) => LatLng(
                          e.latitude,
                          e.longitude,
                        ),
                      )
                      .toList(),
                ),
              );
            }
          }
        } catch (e, st) {
          if (kDebugMode) {
            print(e);
            print(st);
          }
        }
        final mLat = markerLatitude.toDouble();
        final mLon = markerLongitude.toDouble();
        if (kDebugMode) {
          print('ADD RANDOM MARKER!1');
        }
        mapMarkers.add(
          Marker(
            markerId: MarkerId(markerId),
            position: LatLng(
              mLat,
              mLon,
            ),
            icon: markerIcon ?? BitmapDescriptor.defaultMarker,
            onTap: () {
              // addDataset(context, datasets, _map);
            },
          ),
        );
      } catch (e, st) {
        if (kDebugMode) {
          print('Marker: $element failed. with error: $e $st');
        }
      }
    }

    emit(
      GoogleMapsLoadedState(
        state.uiModel.copyWith(
          paths: polyLines,
          markers: mapMarkers,
          cameraPosition: CameraPosition(
            target: LatLng(
              initialPositionLat.toDouble(),
              initialPositionLng.toDouble(),
            ),
            zoom: zoom,
          ),
          style: mapStyle,
        ),
      ),
    );
    if (moveCameraToUserLocation) {
      onEmitNewCameraPosition(
        userLocationLat,
        userLocationLng,
        zoom,
      );
    }
  }

  void onEmitReloadDataState() {
    emit(
      GoogleMapsReloadDataState(
        state.uiModel,
      ),
    );
  }

  void onEmitNewCameraPosition(
    final double lat,
    final double lng,
    final double zoom,
  ) {
    emit(
      GoogleMapsSetNewCameraPositionState(
        state.uiModel.copyWith(
          cameraPosition: CameraPosition(
            target: LatLng(
              lat,
              lng,
            ),
            zoom: zoom,
          ),
        ),
      ),
    );
  }

  void onEmitNewMapStyle(final MapStyle style) {
    final newMapStyle = getMap(style);

    emit(
      GoogleMapsChangeMapStyleState(
        state.uiModel.copyWith(style: newMapStyle),
      ),
    );
  }

  void onEmitNewMarkers(final Set<Marker> markers) {
    emit(
      GoogleMapsReloadMarkersState(
        state.uiModel.copyWith(
          markers: markers,
        ),
      ),
    );
  }
}

class GoogleMapsConfigNames {
  GoogleMapsConfigNames({
    required this.mapStyle,
    required this.initialPositionLat,
    required this.initialPositionLng,
    required this.initialMapZoomLevel,
    required this.showMyLocationMarker,
    required this.trackMyLocation,
    required this.markerId,
    required this.markerLocationLat,
    required this.markerLocationLng,
    required this.markerIconUrl,
    required this.markerIconWidth,
    required this.markerIconHeight,
    required this.drawPathFromUserGeolocationToMarker,
    required this.googleMapsKey,
    required this.pathColor,
  });

// Maps Config
  final MapStyle mapStyle;
  final String initialPositionLat;
  final String initialPositionLng;
  final String initialMapZoomLevel;
  final bool showMyLocationMarker;
  final bool trackMyLocation;

// Markers Config
  final String markerId;
  final String markerLocationLat;
  final String markerLocationLng;
  final String markerIconUrl;
  final String markerIconWidth;
  final String markerIconHeight;
  final String drawPathFromUserGeolocationToMarker;
  final String pathColor;

  // Keys
  final String googleMapsKey;
}

class GoogleMapsUiModel extends Equatable {
  const GoogleMapsUiModel({
    required this.paths,
    required this.markers,
    required this.cameraPosition,
    required this.style,
  });

  final Set<Polyline> paths;
  final Set<Marker> markers;
  final CameraPosition cameraPosition;
  final String style;

  GoogleMapsUiModel copyWith({
    final Set<Polyline>? paths,
    final Set<Marker>? markers,
    final CameraPosition? cameraPosition,
    final double? initialZoom,
    final String? style,
    final bool? isError,
    final bool? isInitialState,
  }) =>
      GoogleMapsUiModel(
        paths: paths ?? this.paths,
        markers: markers ?? this.markers,
        cameraPosition: cameraPosition ?? this.cameraPosition,
        style: style ?? this.style,
      );

  @override
  String toString() {
    return 'paths: $paths\n'
        'markers: $markers\n'
        'initialCameraPosition: $cameraPosition\n';
  }

  @override
  List<Object?> get props => [
        paths,
        markers,
        cameraPosition,
        style,
      ];
}

abstract class GoogleMapsState extends Equatable {
  const GoogleMapsState(this.uiModel);

  final GoogleMapsUiModel uiModel;

  @override
  List<Object?> get props => [uiModel];
}

class GoogleMapsInitialState extends GoogleMapsState {
  const GoogleMapsInitialState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}

class GoogleMapsReloadDataState extends GoogleMapsState {
  const GoogleMapsReloadDataState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}

class GoogleMapsLoadedState extends GoogleMapsState {
  const GoogleMapsLoadedState(final GoogleMapsUiModel uiModel) : super(uiModel);
}

class GoogleMapsErrorState extends GoogleMapsState {
  const GoogleMapsErrorState(final GoogleMapsUiModel uiModel) : super(uiModel);
}

class GoogleMapsSetNewCameraPositionState extends GoogleMapsState {
  const GoogleMapsSetNewCameraPositionState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}

//Need to rebuild widget for this
class GoogleMapsReloadMarkersState extends GoogleMapsState {
  const GoogleMapsReloadMarkersState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}

//Need to rebuild widget for this
class GoogleMapsReloadPolyLinesState extends GoogleMapsState {
  const GoogleMapsReloadPolyLinesState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}

class GoogleMapsChangeMapStyleState extends GoogleMapsState {
  const GoogleMapsChangeMapStyleState(final GoogleMapsUiModel uiModel)
      : super(uiModel);
}
