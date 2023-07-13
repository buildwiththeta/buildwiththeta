import 'package:flutter/widgets.dart';

abstract class IconDefinition implements Comparable<IconDefinition> {
  IconDefinition(final String key);

  late IconData iconData;
  late String title;

  @override
  String toString() => 'IconDefinition{iconData: $iconData, title: $title}';

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is IconDefinition &&
          runtimeType == other.runtimeType &&
          iconData == other.iconData &&
          title == other.title;

  @override
  int get hashCode => iconData.hashCode ^ title.hashCode;

  @override
  int compareTo(final IconDefinition other) => title.compareTo(other.title);
}
