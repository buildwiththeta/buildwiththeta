/// Class to use asset files in Teta
class AssetFile {
  /// Class to use assets files in Teta.
  ///
  /// It required the filename and the public url.
  const AssetFile({
    required this.name,
    required this.url,
  });

  /// From json map
  AssetFile.fromJson(final Map<String, dynamic>? json)
      : name = json?['n'] as String? ?? '',
        url = json?['u'] as String? ?? '';

  /// File's name
  final String name;

  /// File's public url
  final String url;

  /// To json method
  Map<String, dynamic> toJson() => <String, dynamic>{
        'n': name,
        'u': url,
      };
}
