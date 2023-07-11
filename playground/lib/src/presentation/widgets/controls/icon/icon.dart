import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../expandable_container.dart';
import '../../general_context_menu.dart';
import 'definitions/feather_icons.dart';
import 'definitions/font_awesome.dart';
import 'definitions/material_icons.dart';
import 'definitions/icon_definition.dart';

class IconControl extends StatefulWidget {
  const IconControl({
    super.key,
    required this.node,
    required this.onIconChanged,
  });

  final CNode node;
  final Function(IconLibrary library, String icon) onIconChanged;

  @override
  IconControlState createState() => IconControlState();
}

class IconControlState extends State<IconControl> {
  String? selectedIcon;
  IconData? previewIcon;
  IconLibrary iconLibrary = IconLibrary.material;

  @override
  void initState() {
    super.initState();
    // Fetch selected icon & icon library from node
    selectedIcon = widget.node.getAttributes[DBKeys.featherIcon] ??
        widget.node.getAttributes[DBKeys.faIcon] ??
        widget.node.getAttributes[DBKeys.icon] ??
        'plus';
    iconLibrary = widget.node.getAttributes[DBKeys.faIcon] != null
        ? IconLibrary.fontAwesome
        : widget.node.getAttributes[DBKeys.featherIcon] != null
            ? IconLibrary.feather
            : IconLibrary.material;

    // Set preview icon (IconData)
    if (iconLibrary == IconLibrary.material) {
      previewIcon = MdiIcons.fromString(selectedIcon ?? 'plus');
    } else if (iconLibrary == IconLibrary.feather) {
      previewIcon = FeatherIconsMap[selectedIcon ?? 'plus'];
    } else if (iconLibrary == IconLibrary.fontAwesome) {
      previewIcon = faIconNameMapping[selectedIcon ?? 'plus'];
    }
  }

  @override
  Widget build(final BuildContext context) {
    return ExpandableContainer(
      title: 'Icon',
      child: Listener(
        onPointerDown: showPicker,
        child: BounceForSmallWidgets(
          message: 'Change icon',
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey.shade400,
              ),
            ),
            child: Icon(
              previewIcon ?? Icons.add_rounded,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }

  void showPicker(PointerDownEvent event) {
    openGeneralContextMenu(
      event,
      context,
      const Size(400, 700),
      IconSelectorDialog(
        onIconChanged: (library, icon, iconData) {
          setState(() {
            iconLibrary = library;
            selectedIcon = icon;
            previewIcon = iconData;
          });
          widget.onIconChanged(library, icon);
        },
      ),
    );
  }
}

class IconSelectorDialog extends StatefulWidget {
  const IconSelectorDialog({super.key, required this.onIconChanged});

  final Function(
    IconLibrary library,
    String icon,
    IconData iconData,
  ) onIconChanged;

  @override
  State<IconSelectorDialog> createState() => _IconSelectorDialogState();
}

class _IconSelectorDialogState extends State<IconSelectorDialog> {
  final searchBarController = TextEditingController();
  String? selectedIcon;
  IconLibrary iconLibrary = IconLibrary.material;
  late List<IconDefinition> icons;
  late List<IconDefinition> filteredIcons;

  @override
  void initState() {
    super.initState();
    loadIcons();

    searchBarController.addListener(() {
      if (searchBarController.text.isEmpty) filteredIcons = icons;
      setState(() {
        filteredIcons = filterIcons(
          searchBarController.text.trim(),
          limit: 100,
          after: 0,
          icons: icons,
        );
      });
    });
  }

  void loadIcons() {
    if (iconLibrary == IconLibrary.material) {
      icons = iconMap.keys.map(MaterialIconsDefinition.new).toList();
    } else if (iconLibrary == IconLibrary.feather) {
      icons = FeatherIconsMap.keys.map(FeatherIconsDefinition.new).toList();
    } else if (iconLibrary == IconLibrary.fontAwesome) {
      icons =
          faIconNameMapping.keys.map(FontAwesomeIconsDefinition.new).toList();
    }
    filteredIcons = icons;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Padding(
      padding: EI.smH,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.close_rounded, color: theme.txtPrimary),
          ),
          const Gap(Grid.small),
          ThetaDesignDropdownCustom(
            expanded: true,
            value: iconLibrary,
            items: IconLibrary.values
                .where((e) => e != IconLibrary.line)
                .map((e) => DropdownCustomMenuItem(
                    value: e, child: TParagraph(e.displayName)))
                .toList(),
            onChange: (val) {
              setState(() {
                iconLibrary = val!;
                loadIcons();
              });
            },
          ),
          const Gap(Grid.small),
          ThetaTextField(
            controller: searchBarController,
            placeholder: 'Search...',
          ),
          const Gap(Grid.small),
          Expanded(
            child: GridView.builder(
              itemCount: filteredIcons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (final context, final index) {
                final icon = filteredIcons[index];
                return BounceForSmallWidgets(
                  message: icon.title,
                  onTap: () {
                    setState(() => selectedIcon = icon.title);
                    widget.onIconChanged(
                      iconLibrary,
                      selectedIcon!,
                      icon.iconData,
                    );
                    Navigator.of(context, rootNavigator: true).pop(null);
                  },
                  child: Container(
                    height: 32,
                    width: 32,
                    padding: EI.smA,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Center(
                      child: Icon(
                        icon.iconData,
                        size: 28,
                        color: theme.txtPrimary,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<IconDefinition> filterIcons(
  final String query, {
  required final int limit,
  required final int after,
  required final Iterable<IconDefinition> icons,
}) {
  var list = icons
      .where((icon) => icon.title.toLowerCase().contains(query.toLowerCase()))
      .skip(after)
      .toList();

  if (list.length > limit) list = list.sublist(0, limit);
  return list;
}
