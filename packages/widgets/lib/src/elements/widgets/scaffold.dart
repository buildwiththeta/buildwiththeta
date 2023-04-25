// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

import 'package:collection/collection.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

class OpenWScaffold extends NodeWidget {
  /// Returns a Scaffold
  const OpenWScaffold({
    super.key,
    required super.nodeState,
    required this.children,
    required this.fill,
    required this.showAppBar,
    required this.showBottomBar,
    required this.showDrawer,
    required this.isScrollable,
    required this.isClipped,
    required this.bodyExtended,
    required this.isBoxed,
    required this.flag,
  });

  final List<CNode> children;
  final bool isBoxed;
  final FFill fill;
  final bool showAppBar;
  final bool showBottomBar;
  final bool showDrawer;
  final bool isScrollable;
  final bool isClipped;
  final bool bodyExtended;
  final bool flag;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final isPage = state.isPage;
    if (!isPage && !state.forPlay) {
      return SizedBox(
        child: Center(
          child: _childWids(context, nodeState),
        ),
      );
    } else if (!isPage && state.forPlay) {
      return _childWids(context, nodeState);
    } else {
      return _scaffold(context, state, nodeState);
    }
  }

  Widget _scaffold(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    CNode? drawerNode;
    drawerNode = children.firstWhereOrNull(
      (final element) => element.type == NType.drawer,
    );

    CNode? appBar;
    appBar = children.firstWhereOrNull(
      (final element) => element.type == NType.appBar,
    );

    return state.forPlay
        ? Scaffold(
            backgroundColor: HexColor(
              fill.getHexColor(
                context,
                context.watch<ColorStylesCubit>().state,
                context.watch<ThemeCubit>().state,
              ),
            ),
            resizeToAvoidBottomInset: flag,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: showAppBar && appBar != null
                  ? appBar.toWidget(state: nodeState, context: context)
                  : const SizedBox(),
            ),
            drawer: drawerNode != null
                ? Drawer(
                    child: drawerNode.toWidget(
                        state: nodeState.copyWith(node: drawerNode),
                        context: context),
                  )
                : null,
            body: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: _stack(context, state, nodeState),
            ),
          )
        : Scaffold(
            backgroundColor: HexColor(
              fill.getHexColor(
                context,
                context.watch<ColorStylesCubit>().state,
                context.watch<ThemeCubit>().state,
              ),
            ),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: showAppBar && appBar != null
                  ? appBar.toWidget(
                      state: nodeState.copyWith(node: appBar), context: context)
                  : const SizedBox(),
            ),
            body: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: IntrinsicHeight(
                child: _stack(context, state, nodeState),
              ),
            ),
          );
  }

  /// Returns the body of Scaffold,
  /// which consists in a Stack with widget.appBar and widget.bottomBar.
  /// Eventualy, if !forPlay, also widget.drawer
  Widget _stack(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    CNode? bottomBar;
    bottomBar = children.firstWhereOrNull(
      (final element) => element.type == NType.bottomBar,
    );

    CNode? drawerNode;
    drawerNode = children.firstWhereOrNull(
      (final element) => element.type == NType.drawer,
    );

    final isPage = state.isPage;
    if (!isPage) return _childWids(context, nodeState);
    return Stack(
      children: [
        Positioned.fill(
          child: _childWids(context, nodeState),
        ),
        if (showDrawer && !state.forPlay)
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(right: 50),
              decoration: const BoxDecoration(color: Colors.black38),
              child: Drawer(
                child: drawerNode != null
                    ? drawerNode.toWidget(
                        state: nodeState.copyWith(node: drawerNode),
                        context: context)
                    : const SizedBox(),
              ),
            ),
          ),
        if (showBottomBar)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: (bottomBar != null)
                ? bottomBar.toWidget(
                    state: nodeState.copyWith(node: bottomBar),
                    context: context)
                : const SizedBox(),
          ),
      ],
    );
  }

  Widget _childWids(final BuildContext context, final WidgetState nodeState) {
    final widgets = children
        .where(
          (final e) =>
              e.intrinsicState.type != NType.bottomBar &&
              e.intrinsicState.type != NType.appBar &&
              e.intrinsicState.type != NType.drawer,
        )
        .map(
          (final e) => BoxTransformBuilder(
            child: e.toWidget(state: nodeState, context: context),
          ),
        )
        .toList();
    return widgets.isNotEmpty
        ? isBoxed
            ? Center(
                child: WrapperContainer(
                  child: Stack(
                    children: widgets,
                  ),
                ),
              )
            : Stack(
                children: widgets,
              )
        : const SizedBox();
  }
}
