import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:light_logger/light_logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:universal_platform/universal_platform.dart';

class DeviceInfo {
  const DeviceInfo(
    this.osName,
    this.osVersion,
    this.locale,
    this.sdkBuildNumber,
    this.sdkVersion,
  );

  final String osName;
  final String osVersion;
  final String? locale;
  final String sdkVersion;
  final String sdkBuildNumber;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'os_name': osName,
      'os_version': osVersion,
      'locale': locale,
      'sdk_version': sdkVersion,
      'sdk_build_number': sdkBuildNumber,
    };
  }
}

class DeviceInfoUtils {
  const DeviceInfoUtils();

  Future<DeviceInfo> get() async {
    final deviceInfoResponse = DeviceInfoPlugin();
    final packageInfo = await PackageInfo.fromPlatform();

    final osName = await _osName(deviceInfoResponse);
    final osVersion = await _osVersion();

    final List<Locale> systemLocales = [];
    try {
      systemLocales.addAll(window.locales);
    } catch (e) {
      Logger.printError(e.toString());
    }

    return DeviceInfo(
      osName,
      osVersion ?? '',
      systemLocales.isNotEmpty ? systemLocales.first.toString() : null,
      packageInfo.buildNumber,
      packageInfo.version,
    );
  }

  Future<String> _osName(DeviceInfoPlugin deviceInfoResponse) async {
    if (UniversalPlatform.isAndroid) {
      return "Android";
    } else if (UniversalPlatform.isIOS) {
      final info = await deviceInfoResponse.iosInfo;
      return info.model?.toLowerCase().contains('ipad') ?? false
          ? 'iPadOS'
          : 'iOS';
    } else if (UniversalPlatform.isWeb) {
      final info = await deviceInfoResponse.webBrowserInfo;
      return info.browserName.name;
    } else if (UniversalPlatform.isMacOS) {
      return "macOS";
    } else if (UniversalPlatform.isWindows) {
      return "Windows";
    } else if (UniversalPlatform.isLinux) {
      final info = await deviceInfoResponse.linuxInfo;
      return info.name;
    } else {
      return 'Unknown';
    }
  }

  Future<String?> _osVersion() async {
    final deviceInfoResponse = DeviceInfoPlugin();
    if (UniversalPlatform.isAndroid) {
      final info = await deviceInfoResponse.androidInfo;
      return info.version.release;
    } else if (UniversalPlatform.isIOS) {
      final info = await deviceInfoResponse.iosInfo;
      return info.systemVersion;
    } else if (UniversalPlatform.isWeb) {
      final info = await deviceInfoResponse.webBrowserInfo;
      return info.appVersion;
    } else if (UniversalPlatform.isMacOS) {
      return null;
    } else if (UniversalPlatform.isWindows) {
      final info = await deviceInfoResponse.windowsInfo;
      return '${info.majorVersion}.${info.minorVersion}.${info.buildNumber}';
    } else if (UniversalPlatform.isLinux) {
      final info = await deviceInfoResponse.linuxInfo;
      return info.versionId;
    } else {
      return 'Unknown';
    }
  }
}
