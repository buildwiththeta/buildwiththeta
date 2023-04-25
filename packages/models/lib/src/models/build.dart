/// Class to wrap a build in a prj
class BuildObject {
  /// A BuildObject is a build made in prj
  const BuildObject({
    required this.id,
    required this.prjId,
    required this.link,
    required this.platform,
  });

  /// From json map
  BuildObject.fromJson(final Map<String, dynamic> json)
      : id = json['id'] as int,
        prjId = json['prjId'] as int,
        link = json['link'] as String,
        platform = json['platform'] as String;

  /// id of the build
  final int id;

  /// prj id
  final int prjId;

  /// link to find the build. Attention: this is only the id part of the link
  final String link;

  /// platform target of the build. Now allowed: ['web', 'apk']
  final String platform;

  /// Get the final link, depending by the platform
  String get finalLink => platform == 'web' ? webLink : apkLink;

  /// Link of the web build
  String get webLink => 'https://builder.teta.so:9000/build/live/$link';

  /// Link of the APK build
  String get apkLink => 'https://builder.teta.so:9000/build/apk/$link/app.apk';
}
