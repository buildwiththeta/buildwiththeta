import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';

import 'icon_definition.dart';

class FontAwesomeIconsDefinition extends IconDefinition {
  FontAwesomeIconsDefinition(final String key) : super(key) {
    iconData = faIconNameMapping[key] ?? faIconNameMapping.entries.first.value;
    title = key;
  }
}
