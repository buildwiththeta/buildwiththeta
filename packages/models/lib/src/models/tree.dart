// ignore_for_file: public_member_api_docs

class TreeObject {
  /// Constructor
  TreeObject({
    required this.id,
    required this.name,
    required this.value,
    required this.level,
    required this.loop,
  });

  final int id;
  final String name;
  final String value;
  final double level;
  final int loop;
  final List<TreeObject> children = [];

  @override
  String toString() => '$name: $value';
}
