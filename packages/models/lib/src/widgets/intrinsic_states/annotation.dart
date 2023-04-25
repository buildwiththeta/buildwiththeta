class IntrinsicStateInfo {
  /// Icon of the node.
  final String nodeIcon;

  final List<String> blockedTypes;
  final List<String> synonymous;
  final String displayName;
  final String type;
  final int? maxChildren;
  final String category;
  final String canHave;
  final List<String> addChildLabels;
  final List<String> gestures;
  final List<String> permissions;
  final List<String> packages;
  final List<String> constants;

  const IntrinsicStateInfo({
    required this.nodeIcon,
    required this.synonymous,
    required this.displayName,
    required this.type,
    required this.category,
    required this.canHave,
    this.addChildLabels = const [],
    this.gestures = const [],
    this.permissions = const [],
    this.packages = const [],
    this.constants = const [],
    this.maxChildren,
    this.blockedTypes = const [],
  });
}
