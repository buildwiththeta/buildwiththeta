import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:supabase/supabase.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

/// Returns a [StreamBuilder] widget in Teta
class OpenWCmsStream extends StatefulWidget {
  /// Construct
  const OpenWCmsStream({
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
  _WCmsStreamState createState() => _WCmsStreamState();
}

class _WCmsStreamState extends State<OpenWCmsStream> with AfterLayoutMixin {
  DatasetObject _map = const DatasetObject(
    name: 'Collection Stream',
    map: [<String, dynamic>{}],
  );
  bool isLoaded = true;
  late final StreamController<List<dynamic>> _stream;
  SupabaseClient? client;

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
    Logger.printWarning(
      '$collectionName, keyName: $keyName, keyValue: $keyValue, limit: $limit, page: $page ',
    );
    if (mounted) {
      setState(() {
        _stream = ThetaDB.I.db.from(collectionName).stream(
          filters: [
            if (keyName.isNotEmpty && keyValue.isNotEmpty)
              Filter(keyName, keyValue),
          ],
          limit: int.tryParse(limit) ?? 20,
          page: int.tryParse(page) ?? 0,
          showDrafts: widget.showDrafts,
        );
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    return StreamBuilder(
      stream: _stream.stream,
      builder: (final context, final snapshot) {
        if (!snapshot.hasData ||
            ((snapshot.data as List<dynamic>?)?.isEmpty ?? false)) {
          if (widget.children.isNotEmpty) {
            return widget.children.last
                .toWidget(context: context, state: widget.state);
          } else {
            return const SizedBox();
          }
        } else {
          final list = snapshot.data as List<dynamic>?;
          _map = _map.copyWith(
            name: widget.state.node.name ??
                widget.state.node.intrinsicState.displayName,
            map: (list ?? const <dynamic>[])
                .map((final dynamic e) => e as Map<String, dynamic>)
                .toList(),
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
        }
      },
    );
  }
}
