import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/widgets/google_maps/google_maps_base_widget.dart';

// ignore_for_file: public_member_api_docs

class WGoogleMaps extends WGoogleMapsBase {
  /// Returns a [Map] widget in Teta
  const WGoogleMaps({
    super.key,
    required this.state,
    required this.mapControllerName,
    required this.markersDatasetName,
    required this.markerId,
    required this.markerLatitude,
    required this.markerLongitude,
    required this.markerIconUrl,
    required this.markerIconWidth,
    required this.markerIconHeight,
    required this.mapStyle,
    required this.initialPositionLng,
    required this.initialPositionLat,
    required this.drawPathFromUserGeolocationToMarker,
    required this.showMyLocationMarker,
    required this.trackMyLocation,
    required this.initialZoomLevel,
    required final FFill pathColor,
    required final String cubitName,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  final String markersDatasetName;
  final String mapControllerName;
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

  @override
  State<WGoogleMaps> createState() => _WGoogleMapsState();
}

class _WGoogleMapsState extends State<WGoogleMaps> {
  @override
  Widget build(final BuildContext context) {
    return const Center(
      child: Text('This platform is not supported for Google Maps'),
    );
  }
}
