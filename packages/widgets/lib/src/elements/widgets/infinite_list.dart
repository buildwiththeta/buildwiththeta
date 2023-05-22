import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWInfiniteListView extends StatefulWidget {
  /// Returns a ListView in Teta
  const OpenWInfiniteListView(
    final Key? key, {
    required this.state,
    required this.children,
    required this.flagValue,
    required this.value,
    required this.isVertical,
  }) : super(key: key);

  final WidgetState state;
  final List<CNode> children;
  final bool isVertical;
  final bool flagValue;
  final FTextTypeInput value;
  @override
  createState() => _WInfiniteListViewState();
}

class _WInfiniteListViewState extends State<OpenWInfiniteListView> {
  final bool _hasMore = false;
  final bool _loading = true;
  final bool _error = true;
  final int _nextPageThreshold = 5;
  final List<int> _array = [];

  Future<void> _fetch() async {}

  @override
  Widget build(final BuildContext context) {
    if (_array.isEmpty) {
      if (_loading) {
        return widget.children.length > 2
            ? widget.children[2].toWidget(
                context: context,
                state: widget.state,
              )
            : const SizedBox(); //loading
      } else if (_error) {
        return widget.children.length > 1
            ? widget.children[1].toWidget(
                context: context,
                state: widget.state,
              )
            : const SizedBox(); // error
      }
    } else {
      return ListView.builder(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
        itemCount: _array.length + (_hasMore ? 0 : 1),
        itemBuilder: (final context, final index) {
          if (index == _array.length - _nextPageThreshold) {
            _fetch();
          }
          if (index == _array.length) {
            if (_error) {
              return widget.children.length > 2
                  ? widget.children[2].toWidget(
                      state: widget.state,
                      context: context,
                    )
                  : const SizedBox();
            }
            return widget.children.length > 1
                ? widget.children[1].toWidget(
                    state: widget.state,
                    context: context,
                  )
                : const SizedBox();
          }
          return widget.children.isNotEmpty
              ? widget.children.first.toWidget(
                  state: widget.state,
                  context: context,
                )
              : const SizedBox();
        },
      );
    }
    return const SizedBox();
  }
}
