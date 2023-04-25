import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCmsFetch extends StatefulWidget {
  /// Construct
  const OpenWCmsFetch({
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

  /// The opzional child of this widget
  final List<CNode> children;

  @override
  _WCmsFetchState createState() => _WCmsFetchState();
}

class _WCmsFetchState extends State<OpenWCmsFetch> with AfterLayoutMixin {
  String? collectionName;
  bool isInitialized = false;
  List<dynamic> list = <dynamic>[];
  DatasetObject _map = const DatasetObject(
    name: 'Collection Query',
    map: [<String, dynamic>{}],
  );
  List<DatasetObject> datasets = [];

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    if (!isInitialized) {
      EasyDebounce.debounce(
        'Collection Query ${widget.state.node.id}',
        const Duration(seconds: 1),
        () => getDbElements(context),
      );
    }
  }

  Future<void> getDbElements(BuildContext context) async {
    final state = TreeGlobalState.state;
    collectionName = widget.collection.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    if (collectionName == '') return;
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
    final res = await ThetaDB.I.db.from(collectionName!).get(
      filters: [
        if (keyName.isNotEmpty && keyValue.isNotEmpty)
          Filter(keyName, keyValue),
      ],
      limit: int.tryParse(limit) ?? 20,
      page: int.tryParse(page) ?? 0,
      showDrafts: widget.showDrafts,
    );
    if (res.error != null) {
      Logger.printError(
        'getCollectionByName in Cms Fetch node, error: ${res.error?.message}',
      );
      return;
    }
    _map = _map.copyWith(
      name: widget.state.node.name ??
          widget.state.node.intrinsicState.displayName,
      map: (res.data ?? <dynamic>[])
          .map((final dynamic e) => e as Map<String, dynamic>)
          .toList(),
    );
    setState(() {
      list = res.data ?? <dynamic>[];
      isInitialized = true;
    });
  }

  @override
  Widget build(final BuildContext context) {
    if (collectionName == null ||
        collectionName == '' ||
        widget.children.isEmpty) {
      return Center(
        child: ChildBuilder(
          context: context,
          state: widget.state,
          child: null,
        ),
      );
    }

    if (list.isEmpty) {
      if (widget.children.length > 1) {
        return widget.children.last.toWidget(
          context: context,
          state: widget.state.copyWith(
            node: widget.children.last,
          ),
        );
      } else {
        return const Center(
          child: THeadline3(
            'CMS Fetch returned an empty list. Add children to customize this message,',
            isCentered: true,
            color: Colors.grey,
          ),
        );
      }
    }

    return widget.children.isEmpty
        ? const THeadline3('CMS Fetch requires at least one child')
        : widget.children.first.toWidget(
            context: context,
            state: widget.state.copyWith(
              node: widget.children.first,
            ),
          );
  }
}
