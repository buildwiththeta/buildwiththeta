// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

enum IconLibrary {
  material('Material'),
  fontAwesome('Font Awesome'),
  line('Line'),
  feather('Feather');

  final String displayName;
  const IconLibrary(this.displayName);
}

@dynamicAttributeKey
@AttributeKey(DBKeys.iconType)
class FIconType extends Equatable {
  const FIconType({
    required this.library,
  });

  final IconLibrary library;

  @override
  List<Object?> get props => [library];

  static List<String> get physicsList => [
        IconLibrary.material.displayName,
        IconLibrary.fontAwesome.displayName,
        IconLibrary.line.displayName,
        IconLibrary.feather.displayName,
      ];

  String getStringForDropDown(final BuildContext context) {
    return library.displayName;
  }

  static FIconType fromJson(final String json) {
    try {
      return FIconType(
        library: convertJsonToValue(json),
      );
    } catch (e) {
      return const FIconType(library: IconLibrary.material);
    }
  }

  String toJson() {
    return library.name;
  }

  FIconType clone() => FIconType(library: library);

  FIconType copyWith({final IconLibrary? iconLibrary}) =>
      FIconType(library: iconLibrary ?? library);

  static IconLibrary convertJsonToValue(final String key) {
    IconLibrary phy = IconLibrary.material;
    if (key == IconLibrary.material.name) phy = IconLibrary.material;
    if (key == IconLibrary.fontAwesome.name) phy = IconLibrary.fontAwesome;
    if (key == IconLibrary.line.name) phy = IconLibrary.line;
    if (key == IconLibrary.feather.name) phy = IconLibrary.feather;
    return phy;
  }

  static String convertValueToJson(final ScrollPhysics value) {
    var result = 'assP';
    if (value is NeverScrollableScrollPhysics) result = 'nssP';
    if (value is BouncingScrollPhysics) result = 'bsP';
    return result;
  }
}
