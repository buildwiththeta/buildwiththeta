import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../../../../dependency_injection/di.dart';
import '../../../../../../widgets/node_icon.dart';
import '../../../../../blocs/editor/editor_cubit.dart';
import '../../sizes.dart';
import 'draggable_widget.dart';
import 'label.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';

import 'scaffold_empty_label.dart';

class TreeListDraggableElement extends StatefulWidget {
  const TreeListDraggableElement({
    super.key,
    required this.node,
    required this.index,
    required this.onAdd,
    required this.onAddBetween,
    required this.onMove,
    this.controller,
    required this.onNodeFocused,
    required this.onNodeHovered,
    required this.onNodeRemoved,
    required this.onRightClick,
  });

  final CNode node;
  final ExpandableController? controller;
  final int index;
  final Function(CNode newNode, CNode parent) onAdd;
  final Function(CNode newNode, CNode parent, CNode parentChild) onAddBetween;
  final Function(
      DragTargetMoveSingleNodeModel event, CNode newParent, int index) onMove;
  final Function(NodeID) onNodeFocused;
  final Function(NodeID) onNodeHovered;
  final Function(NodeID) onNodeRemoved;
  final Function(PointerDownEvent e, CNode node) onRightClick;

  @override
  State<TreeListDraggableElement> createState() => _DraggableState();
}

class _DraggableState extends State<TreeListDraggableElement> {
  bool isActive = false;
  bool isActiveWrap = false;
  CNode? parent;

  @override
  void initState() {
    super.initState();
    parent = _getParent();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    parent = _getParent();
  }

  _getParent() => widget.node.parentID != null
      ? getIt.get<FindNodeRendering>().findParent(
            flatList: context
                .read<EditorCubit>()
                .state
                .whenOrNull(loaded: (state) => state.nodes)!,
            parentID: widget.node.parentID!,
          )
      : null;

  @override
  Widget build(final BuildContext context) {
    if (widget.node.type == NType.scaffold) {
      return SizedBox(
        height: (widget.node.children!.isEmpty)
            ? 110
            : PanelsElementSizes.elementsHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            if (widget.node.children!.isEmpty)
              const ScaffoldEmptyLabel()
            else
              TreeListLabel(
                widget.node,
                index: widget.index + 1,
                controller: widget.controller,
                onNodeFocused: widget.onNodeFocused,
                onNodeHovered: widget.onNodeHovered,
                onNodeRemoved: widget.onNodeRemoved,
                onRightClick: widget.onRightClick,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: PanelsElementSizes.elementsHeight / 2,
                ),
                SizedBox(
                  height: widget.node.children!.isEmpty
                      ? 110 - (PanelsElementSizes.elementsHeight / 2)
                      : PanelsElementSizes.elementsHeight / 2,
                  child: DragTarget<DragTargetModel>(
                    onLeave: (final e) {
                      setState(() {
                        isActive = false;
                      });
                    },
                    onWillAccept: (final e) {
                      if (e is DragTargetSingleNodeModel) {
                        setState(() {
                          isActive = true;
                        });
                      } else if (e is DragTargetMoveSingleNodeModel) {
                        if (e.node.id != widget.node.id) {
                          setState(() {
                            isActive = true;
                          });
                        }
                      }
                      return true;
                    },
                    onAccept: (final e) async {
                      if (e is DragTargetMoveSingleNodeModel) {
                        if (e.node.id == widget.node.id) return;
                        widget.onMove.call(e, widget.node, widget.index);
                      } else if (e is DragTargetSingleNodeModel) {
                        widget.onAdd.call(e.node, widget.node);
                      }
                      setState(() {
                        isActive = true;
                      });
                    },
                    builder: (
                      final context,
                      final candidateData,
                      final rejectedData,
                    ) {
                      if (isActive && widget.node.children!.isNotEmpty) {
                        if (widget.node.intrinsicState.canHaveChild &&
                                widget.node.child == null ||
                            widget.node.intrinsicState.canHaveChildren) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const Positioned(
                                bottom: 0,
                                height: 1,
                                left: 4,
                                right: 4,
                                child: ColoredBox(
                                  color: Palette.blue,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  color: Palette.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                                child: const CText(
                                  'Add in Component',
                                  typography: TextStyle(fontSize: 9),
                                ),
                              ),
                            ],
                          );
                        }
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    if (parent == null) {
      return TreeListLabel(
        widget.node,
        index: widget.index + 1,
        controller: widget.controller,
        onNodeFocused: widget.onNodeFocused,
        onNodeHovered: widget.onNodeHovered,
        onNodeRemoved: widget.onNodeRemoved,
        onRightClick: widget.onRightClick,
      );
    }
    return TreeListDraggableWidget(
      data: DragTargetMoveSingleNodeModel(widget.node, parent!),
      feedback: _Feedback(
        node: widget.node,
      ),
      child: SizedBox(
        height: PanelsElementSizes.elementsHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            TreeListLabel(
              widget.node,
              index: widget.index + 1,
              controller: widget.controller,
              onNodeFocused: widget.onNodeFocused,
              onNodeHovered: widget.onNodeHovered,
              onNodeRemoved: widget.onNodeRemoved,
              onRightClick: widget.onRightClick,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: PanelsElementSizes.elementsHeight / 2,
                  child: DragTarget<DragTargetSingleNodeModel>(
                    onLeave: (final e) {
                      setState(() {
                        isActiveWrap = false;
                      });
                    },
                    onWillAccept: (final e) {
                      if (e?.node.intrinsicState.canHave == ChildrenEnum.none) {
                        return false;
                      }
                      setState(() {
                        isActiveWrap = true;
                      });
                      return true;
                    },
                    onAccept: (final e) async {
                      if (e.node.intrinsicState.canHave == ChildrenEnum.none) {
                        return;
                      }
                      widget.onAddBetween.call(e.node, parent!, widget.node);
                      setState(() {
                        isActiveWrap = true;
                      });
                    },
                    builder: (
                      final context,
                      final candidateData,
                      final rejectedData,
                    ) {
                      if (isActiveWrap) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              height: 1,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration:
                                  const BoxDecoration(color: Palette.green),
                            ),
                            Positioned(
                              top: 0,
                              left: 4,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  color: Palette.green,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: CText(
                                  'Wrap ${widget.node.name ?? widget.node.intrinsicState.displayName}',
                                  typography: const TextStyle(fontSize: 9),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
                SizedBox(
                  height: PanelsElementSizes.elementsHeight / 2,
                  child: DragTarget<DragTargetModel>(
                    onLeave: (final e) {
                      setState(() {
                        isActive = false;
                      });
                    },
                    onWillAccept: (final e) {
                      if (e is DragTargetSingleNodeModel) {
                        setState(() {
                          isActive = true;
                        });
                      } else if (e is DragTargetMoveSingleNodeModel) {
                        if (e.node.id != widget.node.id) {
                          setState(() {
                            isActive = true;
                          });
                        }
                      }
                      return true;
                    },
                    onAccept: (final e) async {
                      if (e is DragTargetMoveSingleNodeModel) {
                        if (e.node.id == widget.node.id) return;
                        widget.onMove.call(e, widget.node, widget.index);
                      } else if (e is DragTargetSingleNodeModel) {
                        widget.onAdd.call(e.node, widget.node);
                      }
                      setState(() {
                        isActive = true;
                      });
                    },
                    builder: (
                      final context,
                      final candidateData,
                      final rejectedData,
                    ) {
                      if (isActive) {
                        if (widget.node.intrinsicState.canHaveChild &&
                                widget.node.child == null ||
                            widget.node.intrinsicState.canHaveChildren) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const Positioned(
                                bottom: 0,
                                height: 1,
                                left: 4,
                                right: 4,
                                child: ColoredBox(
                                  color: Palette.blue,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  color: Palette.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                                child: CText(
                                  'Add in ${widget.node.name ?? widget.node.intrinsicState.displayName}',
                                  typography: const TextStyle(fontSize: 9),
                                ),
                              ),
                            ],
                          );
                        }
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Feedback extends StatelessWidget {
  const _Feedback({
    required this.node,
  });

  final CNode node;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EI.smA,
        decoration: BoxDecoration(
          color: theme.bgTertiary.withOpacity(0.6),
          borderRadius: const BorderRadius.all(
            Radius.circular(Grid.small),
          ),
        ),
        child: Row(
          children: [
            NodeIconWidget(node: node),
            const Gap(Grid.small),
            TDetailLabel(node.name ?? node.intrinsicState.displayName),
          ],
        ),
      ),
    );
  }
}
