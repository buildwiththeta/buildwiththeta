// ignore_for_file: prefer_constructors_over_static_methods
import 'index.dart';

/// Tag for marketplace model
class TagObject {
  /// ctor
  TagObject({
    this.id = '',
    required this.tag,
    required this.idMarketplaceKey,
    required this.authorId,
  });

  /// From json
  static TagObject fromJson(final Map<String, dynamic> json) {
    return TagObject(
      id: json['id'] as String,
      tag: json['tag'] as String,
      idMarketplaceKey: json['id_marketplace_key'] as String,
      authorId: json['author_id'] as String,
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
    final String? id,
    final String? tag,
    final String? authorId,
    final String? idMarketplaceKey,
  }) =>
      TagObject(
        id: id ?? this.id,
        tag: tag ?? this.tag,
        authorId: authorId ?? this.authorId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// id
  final ID? id;

  ///tag
  final String? tag;

  ///item identifier
  final String? idMarketplaceKey;

  /// id
  final UserID? authorId;

  @override
  String toString() =>
      'Tag { id: $id, tag: $tag, author_id: $authorId, id_marketplace_key: $idMarketplaceKey }';
}
