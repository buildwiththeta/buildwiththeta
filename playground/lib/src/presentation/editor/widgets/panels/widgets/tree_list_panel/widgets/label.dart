import 'package:device_frame/device_frame.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../../widgets/node_icon.dart';
import '../../../../../../widgets/visibility_context_menu.dart';
import '../../../../../blocs/device_mode/device_mode_cubit.dart';
import '../../../../../blocs/editor/editor_cubit.dart';
import '../../sizes.dart';

class TreeListLabel extends StatefulWidget {
  const TreeListLabel(
    this.node, {
    super.key,
    required this.index,
    this.controller,
    required this.onNodeFocused,
    required this.onNodeHovered,
    required this.onNodeRemoved,
    required this.onRightClick,
  });

  final CNode node;
  final ExpandableController? controller;
  final double index;
  final Function(NodeID) onNodeFocused;
  final Function(NodeID) onNodeHovered;
  final Function(NodeID) onNodeRemoved;
  final Function(PointerDownEvent e, CNode node) onRightClick;

  @override
  State<TreeListLabel> createState() => _LabelState();
}

class _LabelState extends State<TreeListLabel> {
  bool isExpanded = false;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      isExpanded = widget.controller?.expanded ?? false;
      widget.controller?.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    final visible = widget.node.getAttributes[DBKeys.visibility] ?? true;
    final visibleOnLaptop =
        widget.node.getAttributes[DBKeys.visibleOnLaptop] ?? true;
    final visibleOnMobile =
        widget.node.getAttributes[DBKeys.visibleOnMobile] ?? true;
    final visibleOnTablet =
        widget.node.getAttributes[DBKeys.visibleOnTablet] ?? true;
    final visibleOnDesktop =
        widget.node.getAttributes[DBKeys.visibleOnDesktop] ?? true;
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    final focusNode = context
        .watch<EditorCubit>()
        .state
        .whenOrNull(loaded: (state) => state.focusedNode);
    return BounceForLargeWidgets(
      onTap: () {
        widget.onNodeFocused.call(widget.node.id);
      },
      child: Listener(
        onPointerDown: (final e) {
          if (e.kind == PointerDeviceKind.mouse &&
              e.buttons == kSecondaryMouseButton) {
            widget.onRightClick(e, widget.node);
          }
        },
        child: MouseRegion(
          onEnter: (e) {
            widget.onNodeHovered.call(widget.node.id);
            setState(() {
              isHovered = true;
            });
          },
          onExit: (e) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            padding: EI.smH,
            height: PanelsElementSizes.elementsHeight,
            decoration: BoxDecoration(
              color: focusNode?.id == widget.node.id
                  ? Palette.blue
                  : isHovered
                      ? theme.bgSecondary
                      : null,
              borderRadius: const BorderRadius.all(
                Radius.circular(Grid.small),
              ),
            ),
            child: Row(
              children: [
                if (widget.controller != null)
                  BounceForLargeWidgets(
                    onTap: () {
                      widget.controller!.toggle();
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Icon(
                      isExpanded
                          ? CupertinoIcons.chevron_up
                          : CupertinoIcons.chevron_down,
                      color:
                          focusNode?.id == widget.node.id ? Colors.white : null,
                      size: 8,
                    ),
                  ),
                if (widget.controller != null) const Gap(4) else const Gap(12),
                NodeIconWidget(
                    node: widget.node,
                    color:
                        focusNode?.id == widget.node.id ? Colors.white : null,
                    size: 18),
                const Gap(8),
                Expanded(
                  child: CText(
                    (widget.node.type == NType.scaffold)
                        ? 'Component'
                        : widget.node.name ??
                            widget.node.intrinsicState.displayName,
                    typography: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                    color:
                        focusNode?.id == widget.node.id ? Colors.white : null,
                  ),
                ),
                if (focusNode?.id == widget.node.id &&
                    widget.node.type != NType.scaffold)
                  _NodeDeletionIcon(
                    onNodeDeleted: () =>
                        widget.onNodeRemoved.call(widget.node.id),
                  ),
                if (focusNode?.id == widget.node.id &&
                    widget.node.type != NType.scaffold)
                  const Gap(4),
                if (widget.node.type != NType.scaffold)
                  Listener(
                    onPointerDown: (e) {
                      if (e.kind == PointerDeviceKind.mouse &&
                          e.buttons == kPrimaryMouseButton) {
                        openVisibilityContextMenu(e, context, widget.node);
                      }
                    },
                    child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
                      builder: (context, state) {
                        final deviceType = state.when(
                          phone: (s) => Devices.ios.iPhone13.identifier.type,
                          tablet: (s) =>
                              Devices.ios.iPadPro11Inches.identifier.type,
                          laptop: (s) => laptopInfo.identifier.type,
                          desktop: (s) => desktopInfo.identifier.type,
                        );
                        return Icon(
                          !visible
                              ? CupertinoIcons.eye_slash_fill
                              : ((deviceType == DeviceType.desktop &&
                                          visibleOnDesktop == false) ||
                                      (deviceType == DeviceType.tablet &&
                                          visibleOnTablet == false) ||
                                      (deviceType == DeviceType.phone &&
                                          visibleOnMobile == false) ||
                                      (deviceType == DeviceType.laptop &&
                                          visibleOnLaptop == false))
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye,
                          size: 16,
                          color: (focusNode?.id == widget.node.id)
                              ? Colors.white
                              : !visible ||
                                      ((deviceType == DeviceType.desktop &&
                                              visibleOnDesktop == false) ||
                                          (deviceType == DeviceType.tablet &&
                                              visibleOnTablet == false) ||
                                          (deviceType == DeviceType.phone &&
                                              visibleOnMobile == false) ||
                                          (deviceType == DeviceType.laptop &&
                                              visibleOnLaptop == false)) ||
                                      isHovered
                                  ? null
                                  : Colors.transparent,
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NodeDeletionIcon extends StatelessWidget {
  const _NodeDeletionIcon({required this.onNodeDeleted});

  final VoidCallback onNodeDeleted;

  @override
  Widget build(BuildContext context) {
    return BounceForSmallWidgets(
      onTap: onNodeDeleted,
      child: const Icon(
        CupertinoIcons.xmark,
        size: 16,
        color: Colors.white,
      ),
    );
  }
}
