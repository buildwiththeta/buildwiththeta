import 'dart:async';
import 'dart:convert';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class OpenWCustomHttpRequest extends StatefulWidget {
  /// Construct

  const OpenWCustomHttpRequest({
    super.key,
    required this.state,
    required this.url,
    required this.children,
    this.addParams,
    this.addHeaders,
  });

  final WidgetState state;
  final List<CNode> children;
  final FTextTypeInput url;
  final List<MapElement>? addParams;
  final List<MapElement>? addHeaders;

  @override
  State<OpenWCustomHttpRequest> createState() => _WCustomHttpRequestState();
}

class _WCustomHttpRequestState extends State<OpenWCustomHttpRequest>
    with AfterLayoutMixin {
  bool isInitialized = false;
  List<dynamic> list = <dynamic>[];
  DatasetObject _map = const DatasetObject(
    name: 'Custom HTTP Request URL',
    map: [<String, dynamic>{}],
  );

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    getDataFromURL(context);
  }

  Future<void> getDataFromURL(BuildContext context) async {
    final state = TreeGlobalState.state;
    final url = widget.url.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    try {
      var newURL = url;
      for (var i = 0; i < widget.addParams!.length; i++) {
        if (i == 0) {
          newURL =
              '$url?${widget.addParams![i].key.toString()}=${widget.addParams![i].value.value.toString()}';
        } else {
          newURL =
              '$newURL&${widget.addParams![i].key.toString()}=${widget.addParams![i].value.value.toString()}';
        }
      }
      // print("new URL : " + newURL);

      final headers = {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers':
            'Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale',
        'Access-Control-Allow-Methods': 'POST, OPTIONS'
      };

      for (var i = 0; i < widget.addHeaders!.length; i++) {
        headers[widget.addHeaders![i].key.toString()] =
            widget.addHeaders![i].value.value.toString();
      }

      final response = await http.get(Uri.parse(newURL), headers: headers);

      final json = response.body;

      final dynamic resp = jsonDecode(json);
      if (resp is List) {
        final data = resp;
        if (mounted) {
          setState(() {
            list = data;
            isInitialized = true;
          });
        }
      } else {
        final data = <dynamic>[];
        data.add(resp);
        if (mounted) {
          setState(() {
            list = data;
            isInitialized = true;
          });
        }
      }
      _addFetchDataToDataset(list);
    } catch (e) {
      print('error: ${e.toString()}');
    }
  }

  @override
  Widget build(final BuildContext context) {
    if (list.isEmpty) {
      if (widget.children.length > 1) {
        return RepaintBoundary(
          child: widget.children.last.toWidget(
            context: context,
            state: widget.state.copyWith(
              node: widget.children.last,
            ),
          ),
        );
      } else {
        return const THeadline3(
          'Custom Http Request returned an empty list. Add children to customize this message,',
          isCentered: true,
        );
      }
    }
    return widget.children.isEmpty
        ? const THeadline3('Custom Http Request requires at least one child')
        : RepaintBoundary(
            child: widget.children.first.toWidget(
              context: context,
              state: widget.state.copyWith(node: widget.children.first),
            ),
          );
  }

  void _addFetchDataToDataset(final List<dynamic>? list) {
    _map = _map.copyWith(
      name: widget.state.node.name ??
          widget.state.node.intrinsicState.displayName,
      map: (list ?? const <dynamic>[])
          .map((final dynamic e) => e as Map<String, dynamic>)
          .toList(),
    );

    addDataset(context, _map);
  }
}
