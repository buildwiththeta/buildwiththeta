import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignDropdownCustom<Value> extends StatelessWidget {
  const ThetaDesignDropdownCustom({
    final Key? key,
    required this.value,
    required this.items,
    required this.onChange,
    this.expanded = false,
    this.background,
    this.height,
    this.isDense,
  }) : super(key: key);

  final Value? value;
  final List<DropdownCustomMenuItem<Value>> items;
  final Function(Value?) onChange;
  final bool? expanded;
  final Color? background;
  final double? height;
  final bool? isDense;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      height: height ?? 32,
      padding: EI.smH,
      decoration: BoxDecoration(
        color: theme.bgTertiary,
        borderRadius: const BorderRadius.all(Radius.circular(Grid.small)),
      ),
      alignment: Alignment.centerLeft,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: theme.bgSecondary,
        ),
        child: DropdownButton<Value>(
          underline: const SizedBox(),
          value: value,
          items:
              items.map((final DropdownCustomMenuItem<Value> customMenuItem) {
            return DropdownMenuItem<Value>(
              value: customMenuItem.value,
              child: customMenuItem,
            );
          }).toList(),
          onChanged: onChange,
          isExpanded: expanded ?? false,
          isDense: isDense ?? true,
          icon: Icon(
            CupertinoIcons.chevron_down,
            color: theme.txtPrimary,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class DropdownCustomMenuItem<Value> extends StatelessWidget {
  const DropdownCustomMenuItem({
    required this.value,
    required this.child,
    final Key? key,
  }) : super(key: key);
  final Value value;
  final Widget child;

  @override
  Widget build(final BuildContext context) {
    return child;
  }
}
