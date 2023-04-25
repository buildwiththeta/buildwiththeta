/// Review of a Marketplace item,
class ReviewObject {
  /// ctor
  ReviewObject({
    this.id = 0,
    required this.authorId,
    required this.authorName,
    required this.idMarketplaceKey,
    required this.description,
    this.rate,
  });

  /// From json
  ReviewObject.fromJson(final Map<String, dynamic> json)
      : id = json['id'] as int,
        authorId = json['author_id'] as int?,
        authorName = json['author_name'] as String?,
        idMarketplaceKey = json['id_marketplace_key'] as String?,
        description = json['description'] as String?,
        rate = json['rate'] as int?;

  ///To json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'author_id': authorId,
      'author_name': authorName,
      'id_marketplace_key': idMarketplaceKey,
      'description': description,
      'rate': rate,
    };
  }

  ///copy with
  ReviewObject copyWith({
    final int? id,
    final int? authorId,
    final String? idMarketplaceKey,
    final String? title,
    final String? description,
    final String? authorName,
    final int? rate,
  }) =>
      ReviewObject(
        id: id ?? this.id,
        authorId: authorId ?? this.authorId,
        authorName: authorName ?? this.authorName,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
        description: description ?? this.description,
        rate: rate ?? this.rate,
      );

  /// Review's id
  final int id;

  ///Unique immutable Template identifiable key (Uuid)
  final String? idMarketplaceKey;

  /// UserId of who made this review
  final int? authorId;

  /// Author name
  final String? authorName;

  /// Description
  final String? description;

  /// Vote from user
  final int? rate;

  @override
  String toString() =>
      'ReviewObject { id: $id, author_id: $authorId,author_name: $authorName, id_marketplace_key: $idMarketplaceKey, description: $description, rate: $rate,}';
}
