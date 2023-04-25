// ignore_for_file: prefer_constructors_over_static_methods
/// User Library model
class UpvoteObject {
  /// ctor
  UpvoteObject({
    this.id = 0,
    required this.userId,
    required this.idMarketplaceKey,
  });

  /// From json
  static UpvoteObject fromJson(final Map<String, dynamic> json) {
    return UpvoteObject(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      idMarketplaceKey: json['id_marketplace_key'] as String,
    );
  }

  ///To json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'user_id': userId,
      'id_marketplace_key': idMarketplaceKey,
    };
  }

  ///copy with
  UpvoteObject copyWith({
    final int? id,
    final int? userId,
    final String? idMarketplaceKey,
  }) =>
      UpvoteObject(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// id
  final int? id;

  ///user id
  final int? userId;

  ///item identifier
  final String? idMarketplaceKey;

  @override
  String toString() =>
      'Upvote { id: $id, user_id: $userId, id_marketplace_key: $idMarketplaceKey }';
}
