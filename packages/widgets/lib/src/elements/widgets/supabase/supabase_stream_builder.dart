import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:supabase/supabase.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

class OpenWSupabaseStreamBuilder extends StatefulWidget {
  /// Construct
  const OpenWSupabaseStreamBuilder({
    super.key,
    required this.state,
    required this.from,
    required this.order,
    required this.fromRange,
    required this.children,
  });

  final WidgetState state;

  /// The from's value
  final FTextTypeInput from;

  /// The select's value
  final FTextTypeInput order;

  /// The select's value
  final FTextTypeInput fromRange;

  /// The optional child of this widget
  final List<CNode> children;

  @override
  _WSupabaseStreamBuilderState createState() => _WSupabaseStreamBuilderState();
}

class _WSupabaseStreamBuilderState extends State<OpenWSupabaseStreamBuilder> {
  DatasetObject _map = const DatasetObject(
    name: 'Supabase Query',
    map: [<String, dynamic>{}],
  );
  Stream<List<Map<String, dynamic>>>? _stream;
  SupabaseClient? client;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => calc());
  }

  Future calc() async {
    final state = TreeGlobalState.state;
    if (_stream != null) return;

    final from = widget.from.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final order = widget.order.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final fromRange = widget.fromRange.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final valueFromRange =
        int.tryParse(fromRange) != null ? int.parse(fromRange) : 0;

    client = BlocProvider.of<SupabaseCubit>(context).state;
    final query = client!.from(from).stream(primaryKey: ['id']);

    if (order.isNotEmpty) {
      query.order(order, ascending: true);
    }
    if (valueFromRange != 0) {
      query.limit(valueFromRange);
    }

    query.execute().listen((event) {
      final response = event;
      _map = _map.copyWith(
        name: widget.state.node.name ??
            widget.state.node.intrinsicState.displayName,
        map: response.map((final Map<String, dynamic> e) => e).toList(),
      );
      addDataset(context, _map);
    });
  }

  @override
  Widget build(final BuildContext context) {
    final client = context.watch<SupabaseCubit>().state;

    if (client == null) {
      return const Center(
        child: THeadline3('Supabase is not initialized yet'),
      );
    }

    if (_stream == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return StreamBuilder(
      stream: _stream,
      builder: (final context, final snapshot) {
        if (snapshot.error != null) {
          return Text(
            'Supabase error while fetching data: ${snapshot.error}',
          );
        }

        if (!snapshot.hasData) {
          if (widget.children.isNotEmpty) {
            return widget.children.last.toWidget(
              context: context,
              state: widget.state,
            );
          } else {
            return const CircularProgressIndicator();
          }
        }

        // Returns child
        return ChildBuilder(
          context: context,
          state: widget.state,
          child: widget.children.first,
        );
      },
    );
  }
}
