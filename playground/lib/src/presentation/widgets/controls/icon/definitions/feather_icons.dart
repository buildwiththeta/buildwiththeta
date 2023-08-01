import 'package:feather_icons/feather_icons.dart';

import 'icon_definition.dart';

class FeatherIconsDefinition extends IconDefinition {
  FeatherIconsDefinition(final String key) : super(key) {
    iconData = FeatherIconsMap[key] ?? FeatherIcons.helpCircle;
    title = key;
  }
}
