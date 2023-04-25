import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:clear_response/clear_response.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCmsCustomQuery extends StatefulWidget {
  /// Construct
  const OpenWCmsCustomQuery({
    super.key,
    required this.state,
    required this.query,
    required this.children,
  });

  final WidgetState state;

  /// The from's value
  final FTextTypeInput query;

  /// The opzional child of this widget
  final List<CNode> children;

  @override
  _WCmsCustomQueryState createState() => _WCmsCustomQueryState();
}

class _WCmsCustomQueryState extends State<OpenWCmsCustomQuery>
    with AfterLayoutMixin {
  DatasetObject _map = const DatasetObject(
    name: 'CMS Custom Query',
    map: [<String, dynamic>{}],
  );
  Future<ClearResponse<List<dynamic>?, ClearErrorResponse?>>? _future;

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    calc(context);
  }

  Future calc(BuildContext context) async {
    final state = TreeGlobalState.state;
    final query = widget.query.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );

    if (query.isNotEmpty) {
      if (mounted) {
        setState(() {
          _future = ThetaDB.I.db.query(
            query,
          );
        });
      }
    }
  }

  @override
  Widget build(final BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (final context, final snapshot) {
        if (!snapshot.hasData) {
          if (widget.children.isNotEmpty) {
            return widget.children.last.toWidget(
              context: context,
              state: widget.state,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }

        final list = (snapshot.data as ClearResponse?)?.data as List<dynamic>?;
        Logger.printWarning('list: $list');
        _map = _map.copyWith(
          name: widget.state.node.name ??
              widget.state.node.intrinsicState.displayName,
          map: (list ?? const <dynamic>[])
              .map(
                (final dynamic e) =>
                    e as Map<String, dynamic>? ?? <String, dynamic>{},
              )
              .toList(),
        );
        final datasets = addDataset(context, _map);

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
      },
    );
  }
}
