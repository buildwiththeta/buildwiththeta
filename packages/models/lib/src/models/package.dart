///model for dynamic packages in exported app
class PackageModel {
  ///
  const PackageModel({
    required this.packageName,
    required this.packageVersion,
    required this.isDart,
    this.extraCode,
    this.customPath,
  });

  ///name
  final String packageName;

  ///version
  final String packageVersion;

  ///flag for dart packages
  final bool isDart;

  ///as, hide
  final String? extraCode;

  ///used to define full path of a package
  final String? customPath;

  ///imports in pages
  String get getPackageImport => isDart
      ? "import 'dart:$packageName';"
      : "import 'package:$packageName/$packageName.dart'${extraCode ?? ''};";

  ///pubspec (space necessary)
  String get getPackagePubspecImport => '$packageName: $packageVersion';

  ///pubspec (space necessary)
  String get getCustomPackageImport => customPath ?? '';
}
