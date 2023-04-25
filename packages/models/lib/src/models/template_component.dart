/// Template of a component
class TemplateComponentObject {
  /// Template of a component
  TemplateComponentObject({
    required this.id,
    required this.nodeId,
    required this.title,
    required this.description,
    required this.author,
    required this.image,
  });

  /// From json
  TemplateComponentObject.fromJson(final Map<String, dynamic> json)
      : id = json['id'] as int,
        nodeId = json['node_id'] as int,
        title = json['title'] as String?,
        description = json['description'] as String?,
        author = json['author'] as int?,
        image = json['image'] as String?;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'node_id': nodeId,
        'title': title,
        'description': description,
        'author': author,
        'image': image,
      };

  /// Component's id
  final int id;

  /// Component's original node id
  final int nodeId;

  /// Component's title
  final String? title;

  /// Component's description
  final String? description;

  /// Component's reference to author (user)
  final int? author;

  /// Component's image
  final String? image;
}
