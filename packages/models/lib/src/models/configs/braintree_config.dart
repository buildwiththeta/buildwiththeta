import 'package:equatable/equatable.dart';

class BraintreeConfigMapper {
  const BraintreeConfigMapper();

  static const _companyNameKey = 'payments_company_name';
  static const _countryCode = 'payments_country_code';
  static const _currencyCode = 'braintree_currency_code';
  static const _isEnabledKey = 'braintree_flag';
  static const _sandboxKey = 'braintreeIsSandbox';

  BraintreeConfigModel fromJson(final Map<String, dynamic> json) {
    final productionInfo = const BraintreeConfigInfoMapper()
        .fromJson(json: json, isSandbox: false);
    final sandboxInfo =
        const BraintreeConfigInfoMapper().fromJson(json: json, isSandbox: true);
    final applePay = BraintreeThirdPartyPaymentProvider.fromJson(
      json,
      BraintreeThirdPartyPaymentProviders.apple,
    );
    final googlePay = BraintreeThirdPartyPaymentProvider.fromJson(
      json,
      BraintreeThirdPartyPaymentProviders.google,
    );

    if (productionInfo.isComplete &&
        sandboxInfo.isComplete &&
        check(json[_companyNameKey]) &&
        check(json[_countryCode]) &&
        check(json[_currencyCode])) {
      return BraintreeConfigModelInitialized(
        sandboxInfo: sandboxInfo,
        productionInfo: productionInfo,
        applePay: applePay,
        googlePay: googlePay,
        companyName: json[_companyNameKey] as String? ?? '',
        countryCode: json[_countryCode] as String? ?? '',
        currencyCode: json[_currencyCode] as String? ?? '',
        isEnabled: json[_isEnabledKey] as bool? ?? false,
        isSandbox: json[_sandboxKey] == true,
      );
    }
    return BraintreeConfigModelUninitialized(
      sandboxInfo: sandboxInfo,
      productionInfo: productionInfo,
      applePay: applePay,
      googlePay: googlePay,
      companyName: json[_companyNameKey] as String? ?? '',
      countryCode: json[_countryCode] as String? ?? '',
      currencyCode: json[_currencyCode] as String? ?? '',
      isEnabled: json[_isEnabledKey] as bool? ?? false,
      isSandbox: json[_sandboxKey] == true,
    );
  }

  bool check(final dynamic value) => value != null || value != '';

  Map<String, dynamic> toJson(final BraintreeConfigModel e) =>
      <String, dynamic>{
        ...const BraintreeConfigInfoMapper().toJson(e.sandboxInfo, true),
        ...const BraintreeConfigInfoMapper().toJson(e.productionInfo, false),
        ...e.applePay.toJson(BraintreeThirdPartyPaymentProviders.apple),
        ...e.googlePay.toJson(BraintreeThirdPartyPaymentProviders.google),
        _companyNameKey: e.companyName,
        _countryCode: e.countryCode,
        _currencyCode: e.currencyCode,
        _isEnabledKey: e.isEnabled,
        _sandboxKey: e.isSandbox,
      };

  BraintreeConfigModel copyWith(
    final BraintreeConfigModel e, {
    final _BraintreeChannelInfo? sandboxInfo,
    final _BraintreeChannelInfo? productionInfo,
    final BraintreeThirdPartyPaymentProvider? applePay,
    final BraintreeThirdPartyPaymentProvider? googlePay,
    final String? companyName,
    final String? countryCode,
    final String? currencyCode,
    final bool? isEnabled,
    final bool? isSandbox,
  }) {
    final sandbox = sandboxInfo ?? e.sandboxInfo;
    final production = productionInfo ?? e.productionInfo;
    final applePay0 = applePay ?? e.applePay;
    final googlePay0 = googlePay ?? e.googlePay;
    final companyName0 = companyName ?? e.companyName;
    final countryCode0 = countryCode ?? e.countryCode;
    final currencyCode0 = currencyCode ?? e.currencyCode;
    final isEnabled0 = isEnabled ?? e.isEnabled;
    final isSandbox0 = isSandbox ?? e.isSandbox;
    if (production.isComplete &&
        sandbox.isComplete &&
        check(companyName0) &&
        check(countryCode0) &&
        check(currencyCode0)) {
      return BraintreeConfigModelInitialized(
        sandboxInfo: sandbox,
        productionInfo: production,
        applePay: applePay0,
        googlePay: googlePay0,
        companyName: companyName0,
        countryCode: countryCode0,
        currencyCode: currencyCode0,
        isEnabled: isEnabled0,
        isSandbox: isSandbox0,
      );
    } else {
      return BraintreeConfigModelUninitialized(
        sandboxInfo: sandbox,
        productionInfo: production,
        applePay: applePay0,
        googlePay: googlePay0,
        companyName: companyName0,
        countryCode: countryCode0,
        currencyCode: currencyCode0,
        isEnabled: isEnabled0,
        isSandbox: isSandbox0,
      );
    }
  }
}

class BraintreeConfigInfoMapper {
  const BraintreeConfigInfoMapper();

  static const _clientTokenKey = 'braintree_ClientToken';
  static const _publicKey = 'braintree_PublicKey';
  static const _secretKey = 'braintree_SecretKey';
  static const _merchantIdKey = 'braintree_MerchantId';
  static const _sandboxPrefix = 'braintree_Sandbox';

  _BraintreeChannelInfo fromJson({
    required final Map<String, dynamic> json,
    required final bool isSandbox,
  }) {
    if (!isSandbox) {
      return _BraintreeProductionInfo(
        clientToken: json[_clientTokenKey] as String? ?? '',
        publicKey: json[_publicKey] as String? ?? '',
        secretKey: json[_secretKey] as String? ?? '',
        merchantId: json[_merchantIdKey] as String? ?? '',
      );
    } else {
      return _BraintreeSandboxInfo(
        clientToken: json['$_clientTokenKey$_sandboxPrefix'] as String? ?? '',
        publicKey: json['$_publicKey$_sandboxPrefix'] as String? ?? '',
        secretKey: json['$_secretKey$_sandboxPrefix'] as String? ?? '',
        merchantId: json['$_merchantIdKey$_sandboxPrefix'] as String? ?? '',
      );
    }
  }

  Map<String, dynamic> toJson(
    final _BraintreeChannelInfo e,
    final bool isSandbox,
  ) =>
      isSandbox
          ? <String, dynamic>{
              '$_clientTokenKey$_sandboxPrefix': e.clientToken,
              '$_publicKey$_sandboxPrefix': e.publicKey,
              '$_secretKey$_sandboxPrefix': e.secretKey,
              '$_merchantIdKey$_sandboxPrefix': e.merchantId,
            }
          : <String, dynamic>{
              _clientTokenKey: e.clientToken,
              _publicKey: e.publicKey,
              _secretKey: e.secretKey,
              _merchantIdKey: e.merchantId,
            };

  _BraintreeChannelInfo copywith(
    final _BraintreeChannelInfo e, {
    required final bool isSandbox,
    final String? clientToken,
    final String? publicKey,
    final String? secretKey,
    final String? merchantId,
  }) {
    if (isSandbox) {
      return _BraintreeSandboxInfo(
        clientToken: clientToken ?? e.clientToken,
        publicKey: publicKey ?? e.publicKey,
        secretKey: secretKey ?? e.secretKey,
        merchantId: merchantId ?? e.merchantId,
      );
    } else {
      return _BraintreeProductionInfo(
        clientToken: clientToken ?? e.clientToken,
        publicKey: publicKey ?? e.publicKey,
        secretKey: secretKey ?? e.secretKey,
        merchantId: merchantId ?? e.merchantId,
      );
    }
  }
}

enum BraintreeThirdPartyPaymentProviders {
  apple,
  google,
}

class BraintreeThirdPartyPaymentProvider {
  const BraintreeThirdPartyPaymentProvider({
    required this.merchantId,
    required this.isEnabled,
  });

  final String merchantId;
  final bool isEnabled;

  static const _appleMerchantKey = 'apple_merchant_id';
  static const _googleMerchantKey = 'google_pay_merchant_id';
  static const _appleFlag = 'apple_pay_flag';
  static const _googleFlag = 'google_pay_flag';

  static BraintreeThirdPartyPaymentProvider fromJson(
    final Map<String, dynamic> json,
    final BraintreeThirdPartyPaymentProviders provider,
  ) =>
      BraintreeThirdPartyPaymentProvider(
        merchantId: json[provider == BraintreeThirdPartyPaymentProviders.apple
                ? _appleMerchantKey
                : _googleMerchantKey] as String? ??
            '',
        isEnabled: json[provider == BraintreeThirdPartyPaymentProviders.apple
                ? _appleFlag
                : _googleFlag] ==
            true,
      );

  Map<String, dynamic> toJson(
    final BraintreeThirdPartyPaymentProviders provider,
  ) =>
      provider == BraintreeThirdPartyPaymentProviders.apple
          ? <String, dynamic>{
              _appleMerchantKey: merchantId,
              _appleFlag: isEnabled,
            }
          : <String, dynamic>{
              _googleMerchantKey: merchantId,
              _googleFlag: isEnabled,
            };

  BraintreeThirdPartyPaymentProvider copyWith({
    final String? merchantId,
    final bool? isEnabled,
  }) =>
      BraintreeThirdPartyPaymentProvider(
        merchantId: merchantId ?? this.merchantId,
        isEnabled: isEnabled ?? this.isEnabled,
      );
}

abstract class _BraintreeChannelInfo extends Equatable {
  const _BraintreeChannelInfo({
    required this.clientToken,
    required this.secretKey,
    required this.publicKey,
    required this.merchantId,
  });

  final String clientToken;
  final String secretKey;
  final String publicKey;
  final String merchantId;

  bool get isComplete =>
      clientToken != '' &&
      secretKey != '' &&
      publicKey != '' &&
      merchantId != '';

  @override
  List<Object?> get props => [
        clientToken,
        secretKey,
        publicKey,
        merchantId,
      ];
}

class _BraintreeProductionInfo extends _BraintreeChannelInfo {
  const _BraintreeProductionInfo({
    required super.clientToken,
    required super.publicKey,
    required super.secretKey,
    required super.merchantId,
  });
}

class _BraintreeSandboxInfo extends _BraintreeChannelInfo {
  const _BraintreeSandboxInfo({
    required super.clientToken,
    required super.publicKey,
    required super.secretKey,
    required super.merchantId,
  });
}

abstract class BraintreeConfigModel extends Equatable {
  const BraintreeConfigModel({
    this.isSandbox = true,
    required this.sandboxInfo,
    required this.productionInfo,
    required this.applePay,
    required this.googlePay,
    this.currencyCode = '',
    this.companyName = '',
    this.countryCode = '',
    this.isEnabled = false,
  });

  final _BraintreeChannelInfo sandboxInfo;
  final _BraintreeChannelInfo productionInfo;
  final String currencyCode;
  final String companyName;
  final String countryCode;
  final bool isSandbox;
  final bool isEnabled;

  final BraintreeThirdPartyPaymentProvider applePay;
  final BraintreeThirdPartyPaymentProvider googlePay;

  @override
  List<Object?> get props => [
        sandboxInfo,
        productionInfo,
        currencyCode,
        companyName,
        countryCode,
        isSandbox,
        isEnabled,
      ];
}

class BraintreeConfigModelInitialized extends BraintreeConfigModel {
  const BraintreeConfigModelInitialized({
    super.isSandbox = true,
    required super.sandboxInfo,
    required super.productionInfo,
    required super.applePay,
    required super.googlePay,
    required super.currencyCode,
    required super.companyName,
    required super.countryCode,
    super.isEnabled = false,
  });
}

class BraintreeConfigModelUninitialized extends BraintreeConfigModel {
  const BraintreeConfigModelUninitialized({
    super.isSandbox = true,
    super.sandboxInfo = const _BraintreeProductionInfo(
      clientToken: '',
      publicKey: '',
      secretKey: '',
      merchantId: '',
    ),
    super.productionInfo = const _BraintreeSandboxInfo(
      clientToken: '',
      publicKey: '',
      secretKey: '',
      merchantId: '',
    ),
    super.applePay = const BraintreeThirdPartyPaymentProvider(
      merchantId: '',
      isEnabled: false,
    ),
    super.googlePay = const BraintreeThirdPartyPaymentProvider(
      merchantId: '',
      isEnabled: false,
    ),
    super.currencyCode,
    super.companyName,
    super.countryCode,
    super.isEnabled = false,
  });
}
