// ignore_for_file: prefer_constructors_over_static_methods
/// Tag for marketplace model
class TagObject {
  /// ctor
  TagObject({
    this.id = 0,
    required this.tag,
    required this.idMarketplaceKey,
    required this.authorId,
  });

  /// From json
  static TagObject fromJson(final Map<String, dynamic> json) {
    return TagObject(
      id: json['id'] as int,
      tag: json['tag'] as String,
      idMarketplaceKey: json['id_marketplace_key'] as String,
      authorId: json['author_id'] as int,
    );
  }

  ///To json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'tag': tag,
      'id_marketplace_key': idMarketplaceKey,
      'author_id': authorId,
    };
  }

  ///copy with
  TagObject copyWith({
    final int? id,
    final String? tag,
    final int? authorId,
    final String? idMarketplaceKey,
  }) =>
      TagObject(
        id: id ?? this.id,
        tag: tag ?? this.tag,
        authorId: authorId ?? this.authorId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// id
  final int? id;

  ///tag
  final String? tag;

  ///item identifier
  final String? idMarketplaceKey;

  /// id
  final int? authorId;

  @override
  String toString() =>
      'Tag { id: $id, tag: $tag, author_id: $authorId, id_marketplace_key: $idMarketplaceKey }';
}
