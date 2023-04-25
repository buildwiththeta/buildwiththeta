import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCmsCount extends StatefulWidget {
  /// Construct
  const OpenWCmsCount({
    super.key,
    required this.state,
    required this.collection,
    required this.limit,
    required this.page,
    required this.keyName,
    required this.keyValue,
    required this.showDrafts,
    required this.children,
  });

  final WidgetState state;

  /// The from's value
  final FTextTypeInput collection;
  final FTextTypeInput limit;
  final FTextTypeInput page;
  final FTextTypeInput keyValue;
  final FTextTypeInput keyName;
  final bool showDrafts;

  /// The optional child of this widget
  final List<CNode> children;

  @override
  _WCmsCountState createState() => _WCmsCountState();
}

class _WCmsCountState extends State<OpenWCmsCount> with AfterLayoutMixin {
  DatasetObject _map = const DatasetObject(
    name: 'Collection Query',
    map: [<String, dynamic>{}],
  );
  late final Future<int>? _future;

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    calc(context);
  }

  Future calc(BuildContext context) async {
    final state = TreeGlobalState.state;
    final collectionName = widget.collection.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final limit = widget.limit.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final page = widget.page.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final keyName = widget.keyName.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final keyValue = widget.keyValue.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    if (mounted) {
      setState(() {
        _future = ThetaDB.I.db.from(collectionName).count(
          filters: [
            if (keyName.isNotEmpty && keyValue.isNotEmpty)
              Filter(keyName, keyValue),
          ],
          limit: int.tryParse(limit) ?? 20,
          page: int.tryParse(page) ?? 0,
        );
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    return RepaintBoundary(
      child: FutureBuilder<int>(
        future: _future,
        builder: (final context, final snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (!snapshot.hasData) {
              if (widget.children.length > 1) {
                return widget.children.last.toWidget(
                  context: context,
                  state: widget.state,
                );
              } else {
                return const SizedBox();
              }
            }

            final count = snapshot.data ?? 0;
            _map = _map.copyWith(
              name: widget.state.node.name ??
                  widget.state.node.intrinsicState.displayName,
              map: [
                <String, int>{
                  'count': count,
                },
              ],
            );
            addDataset(context, _map);

            // Returns child
            if (widget.children.isNotEmpty) {
              return widget.children.first.toWidget(
                context: context,
                state: widget.state.copyWith(
                  node: widget.children.first,
                ),
              );
            } else {
              return const SizedBox();
            }
          } else {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
