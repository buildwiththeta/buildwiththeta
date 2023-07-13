import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class NodeProperties extends StatefulWidget {
  const NodeProperties({super.key, required this.focusedNode});

  final CNode focusedNode;

  @override
  State<NodeProperties> createState() => _NodePropertiesState();
}

class _NodePropertiesState extends State<NodeProperties> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.focusedNode.id;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: widget.focusedNode.type != NType.scaffold
          ? '${widget.focusedNode.name} Info'
          : 'Component Info',
      initiallyExpanded: false,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: IgnorePointer(
                  ignoring: true,
                  child: ThetaTextField(
                    controller: controller,
                    readOnly: false,
                  ),
                ),
              ),
              const Gap(Grid.small),
              BounceForSmallWidgets(
                message: 'Copy',
                onTap: () => FlutterClipboard.copy(controller.text),
                child: const Icon(
                  CupertinoIcons.doc_on_doc,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
