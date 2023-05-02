import 'dart:async';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

// ignore_for_file: public_member_api_docs

class WMapBuilder extends StatefulWidget {
  /// Returns a [Map] widget in Teta
  const WMapBuilder({
    super.key,
    required this.state,
    required this.controller,
    required this.flag,
    required this.datasetInput,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput controller;
  final FDataset datasetInput;
  final bool flag;

  @override
  State<WMapBuilder> createState() => _WMapBuilderState();
}

class _WMapBuilderState extends State<WMapBuilder> {
  VariableObject? variable;
  DatasetObject map = DatasetObject.empty();
  bool isInitialized = false;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (final dynamic t) {
      if (mounted) {
        setState(() {});
      }
    });
    init();
    super.initState();
  }

  Future<void> init() async {
    if (widget.controller.type == FTextTypeEnum.param) {
      variable = TreeGlobalState.state.states
          .firstWhereOrNull((final e) => e.name == widget.controller.paramName);
    } else {
      variable = TreeGlobalState.state.states
          .firstWhereOrNull((final e) => e.name == widget.controller.stateName);
    }
    variable = variable!.copyWith(
      mapController: MapController(
        location: LatLng(41.52, 12.30),
        zoom: 4,
      ),
    );
    setState(() {});
  }

  void _gotoDefault() {
    variable!.mapController!.center = LatLng(41.52, 12.30);
    setState(() {});
  }

  void _onDoubleTap() {
    variable!.mapController!.zoom += 0.5;
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1;
  void _onScaleStart(final ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(final ScaleUpdateDetails details) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      variable!.mapController!.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      variable!.mapController!.zoom -= 0.02;
      setState(() {});
    } else {
      final now = details.focalPoint;
      final diff = now - _dragStart!;
      _dragStart = now;
      variable!.mapController!.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  Widget _buildMarkerWidget(
    final Offset pos,
    final Color color, [
    final IconData icon = Icons.location_on,
  ]) {
    return Positioned(
      left: pos.dx - 24,
      top: pos.dy - 24,
      child: GestureDetector(
        child: Icon(
          icon,
          color: color,
          size: 48,
        ),
      ),
    );
  }

  @override
  Widget build(final BuildContext context) {
    /*controller = MapController(
      location: LatLng(lat, lng),
      zoom: 4,
    );*/

    if (variable?.mapController == null) {
      return const Center(
        child: THeadline3(
          'Implement a Map Controller state',
        ),
      );
    }

    if (widget.child == null) {
      return const Center(
        child: THeadline3(
          'Implement a child',
        ),
      );
    }

    _setDataset();
    final index = widget.datasetInput.datasetName != null
        ? TreeGlobalState.state.dataset.indexWhere(
            (final element) =>
                element.getName == widget.datasetInput.datasetName,
          )
        : -1;
    final db = index != -1
        ? TreeGlobalState.state.dataset[index]
        : DatasetObject.empty();

    return !TreeGlobalState.state.config.mapEnabled
        ? const DecoratedBox(
            decoration: BoxDecoration(color: Colors.black),
            child: Center(
              child: THeadline3(
                'Integrate your MapBox key',
              ),
            ),
          )
        : MapLayoutBuilder(
            controller: variable!.mapController!,
            builder: (final context, final transformer) {
              final markers = <LatLng>[];

              for (var i = 0; i < db.getMap.length; i++) {
                if (widget.child?.intrinsicState.type == NType.marker) {
                  final lat = (widget.child!.getAttributes[DBKeys.latitude]
                          as FTextTypeInput)
                      .get(
                    state: TreeGlobalState.state,
                    loop: i,
                    context: context,
                  );
                  final lng = (widget.child!.getAttributes[DBKeys.longitude]
                          as FTextTypeInput)
                      .get(
                    state: TreeGlobalState.state,
                    loop: i,
                    context: context,
                  );
                  markers.add(
                    LatLng(
                      double.tryParse(lat) ?? 0.0,
                      double.tryParse(lng) ?? 0.0,
                    ),
                  );
                }
              }

              final markersChildren = db.getMap;
              final markersWidgets = <Widget>[];
              final normalWidgets = db.getMap
                  .map(
                    (final e) =>
                        widget.child!.intrinsicState.type != NType.marker
                            ? widget.child!
                                .toWidget(state: widget.state, context: context)
                            : const SizedBox(),
                  )
                  .toList();

              for (var i = 0; i < markersChildren.length; i++) {
                if (widget.child?.intrinsicState.type == NType.marker) {
                  markersWidgets.add(
                    widget.child!
                        .toWidget(state: widget.state, context: context),
                  );
                }
              }

              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onDoubleTap: _onDoubleTap,
                onScaleStart: _onScaleStart,
                onScaleUpdate: _onScaleUpdate,
                child: Listener(
                  behavior: HitTestBehavior.opaque,
                  onPointerSignal: (final event) {
                    if (event is PointerScrollEvent) {
                      final delta = event.scrollDelta;

                      variable!.mapController!.zoom -= delta.dy / 1000.0;
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      if (variable != null && variable?.mapController != null)
                        Map(
                          controller: variable!.mapController!,
                          builder: (final context, final x, final y, final z) {
                            final config = TreeGlobalState.state.config;
                            final url =
                                'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/$z/$x/$y?access_token=${config.mapboxKey}';
                            final darkUrl =
                                'https://api.mapbox.com/styles/v1/mapbox/dark-v10/tiles/$z/$x/$y?access_token=${config.mapboxKey}';
                            return CNetworkImage(
                              src: widget.flag ? darkUrl : url,
                              loop: widget.state.loop,
                              width: double.maxFinite,
                              height: double.maxFinite,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ...markersWidgets,
                      ...normalWidgets,
                    ],
                  ),
                ),
              );
            },
          );
  }

  void _setDataset() {
    try {
      final index = TreeGlobalState.state.dataset.indexWhere(
        (final element) => element.getName == widget.datasetInput.datasetName,
      );
      final db = index != -1
          ? TreeGlobalState.state.dataset[index]
          : DatasetObject.empty();
      if (mounted) {
        if (db.getName != '') {
          setState(() {
            map = db;
          });
        }
      }
    } catch (_) {}
  }
}
