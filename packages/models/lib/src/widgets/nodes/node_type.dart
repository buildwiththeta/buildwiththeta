// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:recase/recase.dart';

class NType {
  static const String align = 'align';
  static const String column = 'column';
  static const String component = 'component';
  static const String teamComponent = 'teamComponent';
  static const String container = 'container';
  static const String gridView = 'gridView';
  static const String icon = 'icon';
  static const String image = 'image';
  static const String listView = 'listView';
  static const String lottie = 'lottie';
  static const String row = 'row';
  static const String scaffold = 'scaffold';
  static const String stack = 'stack';
  static const String text = 'text';
  static const String spacer = 'spacer';
  static const String svgPicture = 'svgPicture';
  static const String textField = 'textField';
  static const String switcH = 'switcH';
  static const String divider = 'divider';
  static const String verticalDivider = 'verticalDivider';

  final String name;
  const NType(this.name);

  static List<String> get values => [
        align,
        column,
        component,
        teamComponent,
        container,
        gridView,
        icon,
        image,
        listView,
        lottie,
        row,
        scaffold,
        stack,
        text,
        spacer,
        svgPicture,
        textField,
        switcH,
        divider,
        verticalDivider,
      ];
}

class NodeType {
  ///Get node's display name from NType enum value
  static String name(final String type) => type.camelCase;
}
