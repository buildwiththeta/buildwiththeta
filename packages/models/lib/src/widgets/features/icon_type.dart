import 'package:enum_to_string/enum_to_string.dart';
import 'package:theta_models/src/models/feature.dart';

enum IconLibrary {
  material('Material'),
  fontAwesome('Font Awesome'),
  line('Line'),
  feather('Feather');

  final String displayName;
  const IconLibrary(this.displayName);
}

class FIconType extends FeatureWithEnum<IconLibrary> {
  const FIconType({
    super.value = IconLibrary.material,
  });

  static FIconType fromJson(final String json) =>
      FIconType(value: EnumToString.fromString(IconLibrary.values, json)!);
}
