import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'icon_definition.dart';

class MaterialIconsDefinition extends IconDefinition {
  MaterialIconsDefinition(final String key) : super(key) {
    iconData = MdiIcons.fromString(key) ?? MdiIcons.helpCircleOutline;
    title = key;
  }
}
