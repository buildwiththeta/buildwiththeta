import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:supabase/supabase.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

class OpenWSupabaseFutureBuilder extends StatefulWidget {
  /// Construct
  const OpenWSupabaseFutureBuilder({
    super.key,
    required this.state,
    required this.from,
    required this.select,
    required this.order,
    required this.fromRange,
    required this.toRange,
    required this.numberPage,
    required this.searchName,
    required this.searchValue,
    required this.eqName,
    required this.eqValue,
    required this.children,
  });

  final WidgetState state;

  /// The from's value
  final FTextTypeInput from;

  /// The select's value
  final FTextTypeInput select;

  /// The select's value
  final FTextTypeInput order;

  /// The select's value
  final FTextTypeInput fromRange;

  /// The select's value
  final FTextTypeInput numberPage;

  /// The select's value
  final FTextTypeInput toRange;

  final FTextTypeInput searchName;
  final FTextTypeInput searchValue;
  final FTextTypeInput eqName;
  final FTextTypeInput eqValue;

  /// The opzional child of this widget
  final List<CNode> children;

  @override
  _WSupabaseFutureBuilderState createState() => _WSupabaseFutureBuilderState();
}

class _WSupabaseFutureBuilderState extends State<OpenWSupabaseFutureBuilder> {
  DatasetObject _map = const DatasetObject(
    name: 'Supabase Query',
    map: [<String, dynamic>{}],
  );
  bool isLoaded = true;
  Future<PostgrestResponse>? _future;
  SupabaseClient? client;

  @override
  void initState() {
    super.initState();
  }

  Future calc() async {
    final state = TreeGlobalState.state;
    if (_future != null) return;

    final from = widget.from.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final select = widget.select.get(
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
    final toRange = widget.toRange.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final valueToRange =
        int.tryParse(toRange) != null ? int.parse(toRange) : 15;
    final numberPage = widget.numberPage.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final valueToPage =
        int.tryParse(numberPage) != null ? int.parse(numberPage) : 1;

    final searchName = widget.searchName.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final searchValue = widget.searchValue.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );

    final eqName = widget.eqName.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    final eqValue = widget.eqValue.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );

    client = BlocProvider.of<SupabaseCubit>(context).state;
    final query = client!.from(from).select(select);

    if (order.isNotEmpty) {
      query.order(order, ascending: true);
    }
    if (searchName.isNotEmpty) {
      //query.textSearch(searchName, searchValue, type: TextSearchType.plain);
      query.ilike(searchName, '%$searchValue%');
    }
    if (eqName.isNotEmpty) {
      if (eqName == 'id') {
        query.eq(eqName, int.tryParse(eqValue) ?? 0);
      } else {
        query.eq(eqName, eqValue);
      }
    }
    final res =
        await query.range(valueFromRange, valueToRange * valueToPage).execute();
    final list = res.data as List<dynamic>?;
    _map = _map.copyWith(
      name: widget.state.node.name ??
          widget.state.node.intrinsicState.displayName,
      map: (list ?? const <dynamic>[]).cast<Map<String, dynamic>>(),
    );
    addDataset(context, _map);
  }

  @override
  Widget build(final BuildContext context) {
    if (client == null) {
      return const Center(
        child: THeadline3('Supabase is not initialized yet'),
      );
    }

    return FutureBuilder(
      future: calc(),
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
