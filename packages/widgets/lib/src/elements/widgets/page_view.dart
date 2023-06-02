// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWPageView extends StatefulWidget {
  /// Returns a PageViewwidget
  const OpenWPageView({
    super.key,
    required this.state,
    required this.children,
    required this.isVertical,
    required this.flagValue,
  });

  final WidgetState state;
  final List<CNode> children;
  final bool isVertical;
  final bool flagValue;

  @override
  createState() => _WPageViewState();
}

class _WPageViewState extends State<OpenWPageView> {
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(final BuildContext context) {
    return PageView.builder(
      controller: controller,
      scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
      onPageChanged: (final i) => {},
      itemCount: widget.children.length,
      itemBuilder: (final context, final index) => widget.children.isNotEmpty
          ? widget.children
              .map(
                (final e) => e.toWidget(state: widget.state, context: context),
              )
              .toList()[index]
          : [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: THeadline3(
                    'PageView - Page 1',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: THeadline3(
                    'PageView - Page 2',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: THeadline3(
                    'PageView - Page 3',
                  ),
                ),
              ),
            ][index],
    );
  }
}
