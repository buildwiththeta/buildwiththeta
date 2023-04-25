import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:theta_open_widgets/src/elements/widgets/google_maps/google_maps_base_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

// ignore_for_file: public_member_api_docs

class WGoogleMaps extends WGoogleMapsBase {
  /// Returns a [Map] widget in Teta
  const WGoogleMaps(
    final Key? key, {
    required this.state,
    required this.mapControllerName,
    required this.markersDatasetName,
    required this.markerId,
    required this.markerLatitude,
    required this.markerLongitude,
    required this.markerIconUrl,
    required this.markerIconWidth,
    required this.markerIconHeight,
    required this.drawPathFromUserGeolocationToMarker,
    required this.mapStyle,
    required this.initialPositionLng,
    required this.initialPositionLat,
    required this.showMyLocationMarker,
    required this.trackMyLocation,
    required this.initialZoomLevel,
    required this.pathColor,
    required this.cubitName,
    this.child,
  }) : super(key: key);

  final WidgetState state;
  final CNode? child;

  final String markersDatasetName;
  final String mapControllerName;
  final String cubitName;
  final String markerId;
  final String markerLatitude;
  final String markerLongitude;
  final String markerIconUrl;
  final String markerIconWidth;
  final String markerIconHeight;
  final String drawPathFromUserGeolocationToMarker;
  final FGoogleMapsMapStyle mapStyle;
  final String initialPositionLng;
  final String initialPositionLat;
  final bool showMyLocationMarker;
  final bool trackMyLocation;
  final String initialZoomLevel;
  final FFill pathColor;

  @override
  State<WGoogleMaps> createState() => _WGoogleMapsState();
}

class _WGoogleMapsState extends State<WGoogleMaps> {
  late String googleMapsKey;
  late GoogleMapsCubit googleMapsCubit;
  Completer<GoogleMapController> googleMapsController = Completer();
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(final BuildContext context) {
    return isInitialized
        ? BlocConsumer<GoogleMapsCubit, GoogleMapsState>(
            bloc: googleMapsCubit,
            builder: (final BuildContext context, final GoogleMapsState state) {
              if (state is GoogleMapsInitialState) {
                return const CircularProgressIndicator();
              } else if (state is GoogleMapsErrorState) {
                return Container();
              } else {
                if (kDebugMode) {
                  print('Build map state: $state');
                }
                return GoogleMap(
                  initialCameraPosition: state.uiModel.cameraPosition,
                  polylines: state.uiModel.paths,
                  markers: state.uiModel.markers,
                  onMapCreated: (final cnt) {
                    googleMapsController.complete(cnt);

                    googleMapsCubit
                      ..onEmitNewMapStyle(widget.mapStyle.get)
                      ..onEmitReloadDataState();
                  },
                );
              }
            },
            buildWhen: (final p, final c) {
              final build = c is! GoogleMapsSetNewCameraPositionState &&
                  c is! GoogleMapsChangeMapStyleState &&
                  c is! GoogleMapsReloadDataState;
              if (kDebugMode) {
                print('Build when state($build): $c');
              }
              return build;
            },
            listener: (
              final BuildContext context,
              final GoogleMapsState state,
            ) async {
              if (kDebugMode) {
                print('Listed state $state');
              }
              if (state is GoogleMapsSetNewCameraPositionState) {
                if (googleMapsController.isCompleted) {
                  await (await googleMapsController.future).animateCamera(
                    CameraUpdate.newCameraPosition(
                      state.uiModel.cameraPosition,
                    ),
                  );
                }
              } else if (state is GoogleMapsChangeMapStyleState) {
                if (googleMapsController.isCompleted) {
                  await (await googleMapsController.future)
                      .setMapStyle(state.uiModel.style);
                }
              } else if (state is GoogleMapsReloadDataState) {
                if (kDebugMode) {
                  print('Reload Map State');
                }
                List<Map<String, dynamic>> markersDataset;
                try {
                  markersDataset = TreeGlobalState.state.dataset
                      .firstWhere(
                        (final element) =>
                            element.getName == widget.markersDatasetName,
                      )
                      .getMap;
                } catch (e) {
                  markersDataset = [];
                }

                unawaited(
                  googleMapsCubit.onLoadData(
                    markersDataset,
                    GoogleMapsConfigNames(
                      mapStyle: widget.mapStyle.get,
                      initialPositionLat: widget.initialPositionLat,
                      initialPositionLng: widget.initialPositionLng,
                      initialMapZoomLevel: widget.initialZoomLevel,
                      showMyLocationMarker: widget.showMyLocationMarker,
                      trackMyLocation: widget.trackMyLocation,
                      markerId: widget.markerId,
                      markerLocationLat: widget.markerLatitude,
                      markerLocationLng: widget.markerLongitude,
                      markerIconUrl: widget.markerIconUrl,
                      markerIconWidth: widget.markerIconWidth,
                      markerIconHeight: widget.markerIconHeight,
                      drawPathFromUserGeolocationToMarker:
                          widget.drawPathFromUserGeolocationToMarker,
                      googleMapsKey: googleMapsKey,
                      pathColor: widget.pathColor.getHexColor(
                        context,
                        TreeGlobalState.state.colorStyles,
                        TreeGlobalState.state.theme,
                      ),
                    ),
                    TreeGlobalState.state.dataset,
                    context,
                  ),
                );
                if (kDebugMode) {
                  print('Reload state finished');
                }
              }
            },
          )
        : const Text('Add Google Maps Cubit to initialize map.');
  }

  Future<void> initData() async {
    try {
      googleMapsKey = TreeGlobalState.state.config.googleMapsKey;
      final VariableObject? variable;

      final index = TreeGlobalState.state.states.indexWhere(
        (final e) => e.name == widget.cubitName,
      );
      if (index == -1) return;
      variable = TreeGlobalState.state.states[index];

      /*if (variable.googleMapsCubit == null) {
        context.read<PageCubit>().updateState(
              variable.copyWith(googleMapsCubit: GoogleMapsCubit()),
            );
      }*/

      //variable.googleMapsCubit?.onEmitReloadDataState();

      //googleMapsCubit = variable.googleMapsCubit!;

      /*BlocProvider.of<RefreshCubit>(context).stream.listen(
        (final _) {
          googleMapsCubit.onEmitReloadDataState();
        },
      );*/
      setState(() {
        isInitialized = true;
      });
    } catch (e, st) {
      if (kDebugMode) {
        print('GoogleMapsInitData e:$e, stackTrace:$st');
      }
    }
  }
}
