import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';
import '../general_context_menu.dart';

class OverridesControl extends StatefulWidget {
  const OverridesControl(
      {super.key, required this.focusedNode, required this.onOverrideChange});

  final CNode focusedNode;
  final Function(List<Override>) onOverrideChange;

  @override
  State<OverridesControl> createState() => _OverrideControlState();
}

class _OverrideControlState extends State<OverridesControl> {
  List<Override> nodeOverride = [];

  @override
  void initState() {
    super.initState();
    nodeOverride = widget.focusedNode.getAttributes[DBKeys.overrides] ?? [];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    nodeOverride = widget.focusedNode.getAttributes[DBKeys.overrides] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Override properties',
      initiallyExpanded: true,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: nodeOverride.length + 1,
        itemBuilder: (context, index) => index == nodeOverride.length
            ? Listener(
                onPointerDown: (event) => openGeneralContextMenu(
                  event,
                  context,
                  const Size(400, 500),
                  NewOverrideElementWidget(
                    node: widget.focusedNode,
                    onOverrideChange: (override) {
                      setState(() {
                        nodeOverride = [override];
                      });
                      widget.onOverrideChange(nodeOverride);
                    },
                  ),
                ),
                child: ThetaDesignButton(
                  'Add override',
                  isPrimary: false,
                  onTap: () => null,
                ),
              )
            : OverrideElementWidget(
                node: widget.focusedNode,
                nodeOverride: nodeOverride[index],
                onDelete: () {
                  setState(() {
                    nodeOverride.removeAt(index);
                  });
                  widget.onOverrideChange(nodeOverride);
                },
              ),
      ),
    );
  }
}

class OverrideElementWidget extends StatelessWidget {
  const OverrideElementWidget(
      {super.key,
      required this.node,
      required this.nodeOverride,
      required this.onDelete});

  final CNode node;
  final Override nodeOverride;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    final nodeName = node.componentChildren
            .firstWhere((element) => element.id == nodeOverride.node)
            .name ??
        node.componentChildren
            .firstWhere((element) => element.id == nodeOverride.node)
            .intrinsicState
            .displayName;
    return Container(
      margin: const EdgeInsets.only(bottom: Grid.medium),
      padding: const EdgeInsets.all(Grid.medium),
      decoration: BoxDecoration(
        color: theme.bgPrimary,
        borderRadius: const BorderRadius.all(Radius.circular(Grid.small)),
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: THeadline3(
                  nodeName,
                ),
              ),
              const Gap(Grid.small),
              BounceForSmallWidgets(
                onTap: onDelete,
                child: const Center(
                  child: Icon(
                    CupertinoIcons.delete,
                    color: Palette.blue,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          const Gap(Grid.small),
          Divider(
            color: theme.txtPrimary.withOpacity(0.1),
          ),
          const Gap(Grid.small),
          TDetailLabel(
            'Text value',
            color: theme.txtPrimary30,
          ),
          const Gap(4),
          TParagraph((nodeOverride.properties.first as TextProperty).textData),
        ],
      ),
    );
  }
}

class NewOverrideElementWidget extends StatefulWidget {
  const NewOverrideElementWidget(
      {super.key, required this.node, required this.onOverrideChange});

  final CNode node;
  final Function(Override) onOverrideChange;

  @override
  State<NewOverrideElementWidget> createState() =>
      _NewOverrideElementWidgetState();
}

class _NewOverrideElementWidgetState extends State<NewOverrideElementWidget> {
  late Override nodeOverride;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    nodeOverride = Override('');
  }

  @override
  Widget build(BuildContext context) {
    final children = widget.node.componentChildren;
    return Padding(
      padding: EI.mdA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const THeadline2('New override'),
          const Gap(Grid.medium),
          const TDetailLabel('Node'),
          const Gap(4),
          ThetaDesignDropdownCustom<NodeID>(
            expanded: true,
            value: children
                .firstWhereOrNull((element) => element.id == nodeOverride.node)
                ?.id,
            items: children
                .map((e) => DropdownCustomMenuItem(
                    value: e.id,
                    child: TParagraph(e.name ?? e.intrinsicState.displayName)))
                .toList(),
            onChange: (id) {
              setState(() {
                nodeOverride = nodeOverride.copyWith(node: id);
              });
            },
          ),
          const Gap(Grid.small),
          const TDetailLabel('Property'),
          const Gap(4),
          ThetaDesignDropdownCustom<NodeID>(
            expanded: true,
            value: 'text',
            items: const [
              DropdownCustomMenuItem(value: 'text', child: TParagraph('Text'))
            ],
            onChange: (_) => null,
          ),
          const Gap(Grid.small),
          const TDetailLabel('New value'),
          const Gap(4),
          ThetaTextField(controller: controller),
          const Gap(Grid.medium),
          Align(
            alignment: Alignment.centerRight,
            child: ThetaDesignButton(
              'Add',
              onTap: () {
                widget.onOverrideChange(nodeOverride.copyWith(properties: [
                  TextProperty(textData: controller.text),
                ]));
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
