import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

import '../expandable_container.dart';

class CollectionTypeControl extends StatefulWidget {
  const CollectionTypeControl({
    super.key,
    required this.isList,
    required this.onCollectionTypeChanged,
  });

  final bool isList;
  final Function(bool) onCollectionTypeChanged;

  @override
  State<CollectionTypeControl> createState() => _CollectionTypeState();
}

class _CollectionTypeState extends State<CollectionTypeControl> {
  bool isList = false;

  @override
  void initState() {
    super.initState();
    isList = widget.isList;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;

    return ExpandableContainer(
      title: 'Collection layout',
      child: Container(
        decoration: BoxDecoration(
            color: theme.bgSecondary,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Row(
          children: [
            _TabItem(
              title: 'List',
              isSelected: isList,
              onTap: () {
                setState(() => isList = true);
                widget.onCollectionTypeChanged(true);
              },
            ),
            const Gap(4),
            _TabItem(
              title: 'Grid',
              isSelected: !isList,
              onTap: () {
                setState(() => isList = false);
                widget.onCollectionTypeChanged(false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ThetaDesignButton(
        title,
        isPrimary: isSelected,
        isTransparent: !isSelected,
        onTap: () => onTap.call(),
      ),
    );
  }
}
