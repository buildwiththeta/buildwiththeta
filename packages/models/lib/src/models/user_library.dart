import 'index.dart';

/// User Library model
class UserLibraryObject {
  /// ctor
  UserLibraryObject({
    this.id = '',
    required this.userId,
    required this.idMarketplaceKey,
  });

  /// From json
  static UserLibraryObject fromJson(final Map<String, dynamic> json) {
    return UserLibraryObject(
      id: json['id'] as String,
      userId: json['user_id'] as String,
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
    final String? id,
    final String? userId,
    final String? idMarketplaceKey,
  }) =>
      UserLibraryObject(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// User's library id
  final ID? id;

  ///user id
  final UserID? userId;

  ///user library identifier
  final String? idMarketplaceKey;

  @override
  String toString() =>
      'UserLibrary { id: $id, user_id: $userId, id_marketplace_key: $idMarketplaceKey }';
}
