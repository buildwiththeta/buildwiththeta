// ignore_for_file: prefer_constructors_over_static_methods
import 'index.dart';

/// User Library model
class UpvoteObject {
  /// ctor
  UpvoteObject({
    this.id = '',
    required this.userId,
    required this.idMarketplaceKey,
  });

  /// From json
  static UpvoteObject fromJson(final Map<String, dynamic> json) {
    return UpvoteObject(
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
  UpvoteObject copyWith({
    final String? id,
    final String? userId,
    final String? idMarketplaceKey,
  }) =>
      UpvoteObject(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        idMarketplaceKey: idMarketplaceKey ?? this.idMarketplaceKey,
      );

  /// id
  final ID? id;

  ///user id
  final UserID? userId;

  ///item identifier
  final String? idMarketplaceKey;

  @override
  String toString() =>
      'Upvote { id: $id, user_id: $userId, id_marketplace_key: $idMarketplaceKey }';
}
