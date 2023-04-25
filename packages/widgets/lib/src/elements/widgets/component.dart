// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars, avoid_dynamic_calls

import 'package:collection/collection.dart';
// Package imports:
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_logger/light_logger.dart';
import 'package:projects_db/projects_db.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class OpenWComponent extends StatefulWidget {
  /// Returns a Component
  const OpenWComponent({
    super.key,
    required this.state,
    required this.componentName,
    this.paramsToSend,
  });

  final WidgetState state;
  final String componentName;
  final Map<String, dynamic>? paramsToSend;

  @override
  State<OpenWComponent> createState() => _WComponentState();
}

class _WComponentState extends State<OpenWComponent> {
  PageObject? component;
  late ProjectObject prj;
  bool isLoaded = false;
  final String _paramsString = '';

  @override
  void initState() {
    super.initState();
    calc();
  }

  Future<void> calc() async {
    final pages = context.read<PagesCubit>().state;
    PageObject? component;
    component = pages.firstWhereOrNull(
      (final element) => element.name == widget.componentName,
    );
    if (component != null) {
      await fetch(component, context);

      final nodes = await fetch(component, context);
      final scaffold = const NodeRendering().renderTree(nodes);
      component = component.copyWith(flatList: nodes, scaffold: scaffold);
      if (mounted) {
        setState(() {
          component = component;
          isLoaded = true;
        });
      }
    }
  }

  Future<List<CNode>> fetch(
    final PageObject page,
    final BuildContext context,
  ) async {
    try {
      final rawList = await ProjectsDB.I.client.selectList('nodes', match: {
        'page_id': page.id,
      });
      if (rawList.error != null) return [];
      return rawList.data!
          .map((e) => const NodesParse().fromJson(e['type'], e) as CNode)
          .toList();
    } catch (e) {
      Logger.printError(e.toString());
      return [];
    }
  }

  @override
  Widget build(final BuildContext context) {
    if (!isLoaded && component == null) {
      return const SizedBox();
    }
    return component != null
        ? _VisualBody(
            component: component!,
            state: widget.state,
            paramsToSend: widget.paramsToSend,
          )
        : const SizedBox();
  }
}

class _VisualBody extends StatelessWidget {
  const _VisualBody({
    required this.component,
    required this.state,
    required this.paramsToSend,
    final Key? key,
  }) : super(key: key);

  final PageObject component;
  final WidgetState state;
  final Map<String, dynamic>? paramsToSend;

  @override
  Widget build(final BuildContext context) {
    return BlocProvider<PageCubit>(
      lazy: false,
      create: (final context) => PageCubit(
        const NodeRendering(),
        const FindNodeRendering(),
      )..onFocus(
          page: component,
          forPlay: TreeGlobalState.state.forPlay,
        ),
      child: _VBody(
        component: component,
        state: state,
        paramsToSend: paramsToSend,
      ),
    );
  }
}

class _VBody extends StatelessWidget {
  const _VBody({
    required this.component,
    required this.state,
    required this.paramsToSend,
    final Key? key,
  }) : super(key: key);

  final PageObject component;
  final WidgetState state;
  final Map<String, dynamic>? paramsToSend;

  @override
  Widget build(final BuildContext context) {
    final pageState = context.watch<PageCubit>().state;
    if (pageState is! PageLoaded) return const SizedBox();
    return IgnorePointer(
      ignoring: !TreeGlobalState.state.forPlay,
      child: pageState.page.scaffold.toWidget(
        context: context,
        state: state.copyWith(
          loop: state.loop,
        ),
      ),
    );
  }
}
