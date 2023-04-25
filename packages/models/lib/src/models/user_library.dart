// ignore_for_file: prefer_constructors_over_static_methods
/// User Library model
class UserLibraryObject {
  /// ctor
  UserLibraryObject({
    this.id = 0,
    required this.userId,
    required this.idMarketplaceKey,
  });

  /// From json
  static UserLibraryObject fromJson(final Map<String, dynamic> json) {
    return UserLibraryObject(
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
  UserLibraryObject copyWith({
    final int? id,
    final int? userId,
    final String? idMarketplaceKey,
  }) =>
      UserLibraryObject(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// User's library id
  final int? id;

  ///user id
  final int? userId;

  ///user library identifier
  final String? idMarketplaceKey;

  @override
  String toString() =>
      'UserLibrary { id: $id, user_id: $userId, id_marketplace_key: $idMarketplaceKey }';
}
