// ignore_for_file: public_member_api_docs

class CGoogleFonts {
  /// Constructor
  const CGoogleFonts({this.kind, this.items});

  /// Sort Constructor
  CGoogleFonts fromJson(final Map<String, dynamic> json) {
    final items = <Items>[];
    if (json['items'] != null) {
      for (final e in json['items'] as List<Map<String, dynamic>>) {
        items.add(Items.fromJson(e));
      }
    }
    return CGoogleFonts(kind: json['kind'] as String?, items: items);
  }

  final String? kind;
  final List<Items>? items;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['kind'] = kind;
    if (items != null) {
      data['items'] = items!.map((final v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  /// Constructor
  Items({
    this.family,
    this.variants,
    this.subsets,
    this.version,
    this.lastModified,
    this.files,
    this.category,
    this.kind,
  });

  /// Constructor from Json
  Items.fromJson(final Map<String, dynamic> json) {
    family = json['family'] as String?;
    variants = (json['variants'] as List<String>).cast<String>();
    subsets = (json['subsets'] as List<String>).cast<String>();
    version = json['version'] as String?;
    lastModified = json['lastModified'] as String?;
    files = json['files'] != null
        ? Files.fromJson(json['files'] as Map<String, dynamic>)
        : null;
    category = json['category'] as String?;
    kind = json['kind'] as String?;
  }

  String? family;
  List<String>? variants;
  List<String>? subsets;
  String? version;
  String? lastModified;
  Files? files;
  String? category;
  String? kind;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['family'] = family;
    data['variants'] = variants;
    data['subsets'] = subsets;
    data['version'] = version;
    data['lastModified'] = lastModified;
    if (files != null) {
      data['files'] = files!.toJson();
    }
    data['category'] = category;
    data['kind'] = kind;
    return data;
  }
}

class Files {
  /// Construct
  Files({
    this.regular,
    this.italic,
    this.s500,
    this.s600,
    this.s700,
    this.s800,
    this.s100,
    this.s200,
    this.s300,
    this.s900,
    this.s500italic,
    this.s700italic,
    this.s800italic,
    this.s900italic,
    this.s100italic,
    this.s300italic,
    this.s600italic,
    this.s200italic,
  });

  /// Consturct from Json
  static Files fromJson(final Map<String, dynamic> json) {
    return Files(
      regular: json['regular'] as String?,
      italic: json['italic'] as String?,
      s500: json['500'] as String?,
      s600: json['600'] as String?,
      s700: json['700'] as String?,
      s800: json['800'] as String?,
      s100: json['100'] as String?,
      s200: json['200'] as String?,
      s300: json['300'] as String?,
      s900: json['900'] as String?,
      s500italic: json['500italic'] as String?,
      s700italic: json['700italic'] as String?,
      s800italic: json['800italic'] as String?,
      s900italic: json['900italic'] as String?,
      s100italic: json['100italic'] as String?,
      s300italic: json['300italic'] as String?,
      s600italic: json['600italic'] as String?,
      s200italic: json['200italic'] as String?,
    );
  }

  final String? regular;
  final String? italic;
  final String? s500;
  final String? s600;
  final String? s700;
  final String? s800;
  final String? s100;
  final String? s200;
  final String? s300;
  final String? s900;
  final String? s500italic;
  final String? s700italic;
  final String? s800italic;
  final String? s900italic;
  final String? s100italic;
  final String? s300italic;
  final String? s600italic;
  final String? s200italic;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['regular'] = regular;
    data['italic'] = italic;
    data['500'] = s500;
    data['600'] = s600;
    data['700'] = s700;
    data['800'] = s800;
    data['100'] = s100;
    data['200'] = s200;
    data['300'] = s300;
    data['900'] = s900;
    data['500italic'] = s500italic;
    data['700italic'] = s700italic;
    data['800italic'] = s800italic;
    data['900italic'] = s900italic;
    data['100italic'] = s100italic;
    data['300italic'] = s300italic;
    data['600italic'] = s600italic;
    data['200italic'] = s200italic;
    return data;
  }
}
