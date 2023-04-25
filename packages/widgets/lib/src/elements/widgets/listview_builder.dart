import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';

class OpenWListViewBuilder extends StatefulWidget {
  /// Returns a ListView.builder in Teta
  const OpenWListViewBuilder({
    super.key,
    required this.state,
    required this.child,
    required this.value,
    required this.startFromIndex,
    required this.limit,
    required this.shrinkWrap,
    required this.isVertical,
    required this.isReverse,
    required this.physic,
  });

  final WidgetState state;
  final CNode? child;
  final FTextTypeInput startFromIndex;
  final FTextTypeInput limit;
  final bool shrinkWrap;
  final bool isVertical;
  final bool isReverse;
  final FDataset value;
  final FPhysic physic;

  @override
  WListViewBuilderState createState() => WListViewBuilderState();
}

class WListViewBuilderState extends State<OpenWListViewBuilder> {
  DatasetObject map = DatasetObject.empty();
  bool isLoading = true;

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    _setDataset(state);
    final index = widget.value.datasetName != null
        ? state.dataset.indexWhere(
            (final element) => element.getName == widget.value.datasetName,
          )
        : -1;
    final db = index != -1 ? state.dataset[index] : DatasetObject.empty();
    List<Map<String, dynamic>> newDB;
    if (db.isSubList(widget.value.datasetAttrName ?? '')) {
      newDB = (db.getMap.first[widget.value.datasetAttrName] as List)
          .map(
            (final dynamic e) => <String, dynamic>{...e},
          )
          .toList();
    } else {
      newDB = db.getMap;
    }
    var startFromIndex = int.tryParse(
          widget.startFromIndex.get(
            state: state,
            loop: widget.state.loop,
            context: context,
          ),
        ) ??
        0;
    if (startFromIndex < 0) {
      startFromIndex = 0;
    }
    if (startFromIndex >= newDB.length) {
      startFromIndex = 0;
    }
    var limit = int.tryParse(
          widget.limit.get(
            state: state,
            loop: widget.state.loop,
            context: context,
          ),
        ) ??
        newDB.length;
    if (limit <= 0) {
      limit = newDB.length;
    }
    if (limit > newDB.length) {
      limit = newDB.length;
    }
    return NotificationListener<ScrollEndNotification>(
      onNotification: (final scrollEnd) {
        return true;
      },
      child: ScrollConfiguration(
        behavior: _MyCustomScrollBehavior(),
        child: ListView.builder(
          reverse: widget.isReverse,
          physics: widget.physic.physics,
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          shrinkWrap: widget.shrinkWrap,
          scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
          itemCount: newDB.sublist(startFromIndex, limit).length,
          itemBuilder: (final context, final index) {
            return widget.child != null
                ? widget.child!.toWidget(
                    context: context,
                    state: widget.state.copyWith(
                      loop: index,
                      isVertical: widget.isVertical,
                    ),
                  )
                : const SizedBox();
          },
        ),
      ),
    );
  }

  void _setDataset(TreeState state) {
    try {
      final index = state.dataset.indexWhere(
        (final element) => element.getName == widget.value.datasetName,
      );
      final db = index != -1 ? state.dataset[index] : DatasetObject.empty();
      if (mounted) {
        if (db.getName != '') {
          if (mounted) {
            setState(() {
              map = db;
            });
          }
        }
      }
    } catch (_) {}
  }
}

class _MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
