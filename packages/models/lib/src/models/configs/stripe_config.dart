import 'package:equatable/equatable.dart';

class StripeConfigMapper {
  const StripeConfigMapper();

  static const _publicKey = 'Stripe_Public_Key';
  static const _privateKey = 'Stripe_Private_Key';

  StripeConfigModel fromJson(final Map<String, dynamic> json) {
    final publicKey = json[_publicKey] as String?;
    final privateKey = json[_privateKey] as String?;
    if (publicKey != null && privateKey != null) {
      return StripeConfigModelInitialized(
        publicKey: publicKey,
        privateKey: privateKey,
      );
    }
    return StripeConfigModelUninitialized(
      publicKey: publicKey ?? '',
      privateKey: privateKey ?? '',
    );
  }

  Map<String, dynamic> toJson(final StripeConfigModel e) => <String, dynamic>{
        _publicKey: e.publicKey,
        _privateKey: e.privateKey,
      };
}

abstract class StripeConfigModel extends Equatable {
  const StripeConfigModel({
    required this.publicKey,
    required this.privateKey,
  });

  final String publicKey;
  final String privateKey;

  @override
  List<Object?> get props => [
        publicKey,
        privateKey,
      ];
}

class StripeConfigModelInitialized extends StripeConfigModel {
  const StripeConfigModelInitialized({
    required super.publicKey,
    required super.privateKey,
  });
}

class StripeConfigModelUninitialized extends StripeConfigModel {
  const StripeConfigModelUninitialized({
    super.publicKey = '',
    super.privateKey = '',
  });
}
