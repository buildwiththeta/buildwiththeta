class ThetaAIRenderingNode {
  final int id;
  final String type;
  final Map<String, dynamic>? body;
  final List<int> childrenIDs;

  ThetaAIRenderingNode({
    required this.id,
    required this.type,
    required this.body,
    required this.childrenIDs,
  });

  factory ThetaAIRenderingNode.fromJson(Map<String, dynamic> json) {
    return ThetaAIRenderingNode(
      id: json['id'],
      type: json['type'],
      body: json['body'],
      childrenIDs: List<int>.from(json['childrenIDs']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'body': body,
      'ids': childrenIDs,
    };
  }

  @override
  String toString() {
    return 'TetaAIRenderingNode { id: $id, type: $type, body: $body, childrenIDs: $childrenIDs }';
  }
}
