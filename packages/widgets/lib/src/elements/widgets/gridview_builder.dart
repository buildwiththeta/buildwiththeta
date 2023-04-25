import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class OpenWGridViewBuilder extends StatefulWidget {
  /// Returns a StaggeredGridView (children: [ ]) in Teta
  const OpenWGridViewBuilder({
    super.key,
    required this.state,
    required this.value,
    required this.startFromIndex,
    required this.limit,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.isVertical,
    required this.primary,
    required this.shrinkWrap,
    required this.childAspectRatio,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final FDataset value;
  final bool isVertical;
  final bool primary;
  final bool shrinkWrap;
  final FTextTypeInput startFromIndex;
  final FTextTypeInput limit;
  final FTextTypeInput crossAxisCount;
  final FTextTypeInput mainAxisSpacing;
  final FTextTypeInput crossAxisSpacing;
  final FTextTypeInput childAspectRatio;

  @override
  State<OpenWGridViewBuilder> createState() => _WGridViewState();
}

class _WGridViewState extends State<OpenWGridViewBuilder> {
  DatasetObject map = DatasetObject.empty();
  bool isLoading = true;

  @override
  Widget build(final BuildContext context) {
    final crossAxisCountString = widget.crossAxisCount.get(
      state: TreeGlobalState.state,
      context: context,
      loop: widget.state.loop,
    );
    final mainAxisSpacingString = widget.mainAxisSpacing.get(
      state: TreeGlobalState.state,
      context: context,
      loop: widget.state.loop,
    );
    final crossAxisSpacingString = widget.crossAxisSpacing.get(
      state: TreeGlobalState.state,
      context: context,
      loop: widget.state.loop,
    );
    final childAspectRatioString = widget.childAspectRatio.get(
      state: TreeGlobalState.state,
      context: context,
      loop: widget.state.loop,
    );
    final index = widget.value.datasetName != null
        ? TreeGlobalState.state.dataset.indexWhere(
            (final element) => element.getName == widget.value.datasetName,
          )
        : -1;
    final db = index != -1
        ? TreeGlobalState.state.dataset[index]
        : DatasetObject.empty();
    var startFromIndex = int.tryParse(
          widget.startFromIndex.get(
            state: TreeGlobalState.state,
            context: context,
            loop: widget.state.loop,
          ),
        ) ??
        0;
    if (startFromIndex < 0) {
      startFromIndex = 0;
    }
    if (startFromIndex >= db.getMap.length) {
      startFromIndex = 0;
    }
    var limit = int.tryParse(
          widget.limit.get(
            state: TreeGlobalState.state,
            context: context,
            loop: widget.state.loop,
          ),
        ) ??
        db.getMap.length;
    if (limit <= 0) {
      limit = db.getMap.length;
    }
    if (limit > db.getMap.length) {
      limit = db.getMap.length;
    }
    return GridView.builder(
      shrinkWrap: widget.shrinkWrap,
      primary: widget.primary,
      scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: int.tryParse(crossAxisCountString) != null &&
                (int.tryParse(crossAxisCountString) ?? 0) > 0.1
            ? int.parse(crossAxisCountString)
            : 2,
        mainAxisSpacing: double.tryParse(mainAxisSpacingString) != null &&
                (double.tryParse(mainAxisSpacingString) ?? 0) > 0.1
            ? double.parse(mainAxisSpacingString)
            : 2,
        crossAxisSpacing: double.tryParse(crossAxisSpacingString) != null &&
                (double.tryParse(crossAxisSpacingString) ?? 0) > 0.1
            ? double.parse(crossAxisSpacingString)
            : 2,
        childAspectRatio: double.tryParse(childAspectRatioString) != null &&
                (double.tryParse(childAspectRatioString) ?? 0) > 0.1
            ? double.parse(childAspectRatioString)
            : 1,
      ),
      itemCount: db.getMap.sublist(startFromIndex, limit).length,
      itemBuilder: (final context, final index) => widget.child != null
          ? widget.child!.toWidget(
              context: context,
              state: widget.state.copyWith(
                loop: index,
              ),
            )
          : const SizedBox(),
    );
  }

  void _setDataset() {
    try {
      final index = TreeGlobalState.state.dataset.indexWhere(
        (final element) => element.getName == widget.value.datasetName,
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
