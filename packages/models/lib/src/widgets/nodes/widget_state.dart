import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class WidgetState extends Equatable {
  const WidgetState({
    required this.node,
    required this.loop,
    this.isVertical = true,
  });

  /// The original CNode
  final CNode node;

  final bool isVertical;

  /// The optional position inside a loop
  /// Widgets can be instantiate inside ListView.builder and other list widgets
  /// [loop] indicates the index position inside them
  final int loop;

  WidgetState copyWith({
    final CNode? node,
    final bool? isVertical,
    final int? loop,
  }) {
    return WidgetState(
      node: node ?? this.node,
      loop: loop ?? this.loop,
      isVertical: isVertical ?? this.isVertical,
    );
  }

  String get toKey => '''
${node.id}
$loop
''';

  @override
  List<Object?> get props => [
        node,
        isVertical,
        loop,
      ];
}
