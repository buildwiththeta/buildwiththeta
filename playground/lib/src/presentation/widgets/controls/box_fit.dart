import 'package:flutter/material.dart';
import '../expandable_container.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class BoxFitControls extends StatefulWidget {
  const BoxFitControls({
    super.key,
    required this.boxFit,
    required this.onBoxFitChanged,
  });

  final FBoxFit boxFit;
  final Function(FBoxFit boxFit) onBoxFitChanged;

  @override
  State<BoxFitControls> createState() => _BoxFitControlsState();
}

class _BoxFitControlsState extends State<BoxFitControls> {
  late FBoxFit boxFit;

  @override
  void initState() {
    super.initState();
    boxFit = widget.boxFit;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Box Fit',
      child: ThetaDesignDropdownCustom<BoxFit>(
        value: boxFit.value,
        expanded: true,
        items: const [
          DropdownCustomMenuItem(
            value: BoxFit.contain,
            child: TParagraph('Contain'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.cover,
            child: TParagraph('Cover'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.fill,
            child: TParagraph('Fill'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.fitHeight,
            child: TParagraph('Fit height'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.fitWidth,
            child: TParagraph('Fit width'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.scaleDown,
            child: TParagraph('Scale down'),
          ),
          DropdownCustomMenuItem(
            value: BoxFit.none,
            child: TParagraph('None'),
          ),
        ],
        onChange: (value) {
          setState(() {
            boxFit = boxFit.copyWith(value: value as BoxFit);
            widget.onBoxFitChanged(boxFit);
          });
        },
      ),
    );
  }
}
