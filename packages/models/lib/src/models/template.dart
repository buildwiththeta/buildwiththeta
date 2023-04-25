/// Template of a project, MarketPlace & Duplication
class TemplatePrjObject {
  /// ctor
  TemplatePrjObject({
    this.id = 0, //setted after -> on supa - auto
    this.prjId = 0, //setted after -> publish repository
    required this.title,
    required this.description,
    required this.version,
    required this.link,
    required this.authorId,
    required this.authorName,
    this.image,
    this.coverImage,
    required this.isOnline,
    this.price,
    this.currency,
    this.origCmsToken,
    this.origPrjId,
    required this.isMarketplace,
    required this.idKey,
    this.updatedAt,
  });

  /// From json
  TemplatePrjObject.fromJson(final Map<String, dynamic> json)
      : id = json['id'] as int,
        prjId = json['prj_id'] as int,
        origPrjId = json['orig_prj_id'] as int?,
        idKey = json['id_key'] as String?,
        title = json['title'] as String?,
        description = json['description'] as String?,
        version = json['version'] as String?,
        link = json['link'] as String?,
        authorId = json['author_id'] as int?,
        authorName = json['author_name'] as String?,
        image = json['image'] as String?,
        coverImage = json['cover_image'] as String?,
        isOnline = json['isOnline'] as bool?,
        isMarketplace = json['is_marketplace'] as bool?,
        price = json['price'] as String?,
        currency = json['currency'] as String?,
        origCmsToken = json['orig_cms_token'] as String?,
        //!Fix the error: Error: FormatException: Invalid date format
        updatedAt = DateTime.tryParse(json['updated_at'] as String? ?? '');

  ///To json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id_key': idKey,
      'prj_id': prjId,
      'title': title,
      'description': description,
      'version': version,
      'link': link,
      'author_id': authorId,
      'author_name': authorName,
      'image': image,
      'cover_image': coverImage,
      'isOnline': isOnline,
      'is_marketplace': isMarketplace,
      'price': price,
      'currency': currency,
      'orig_prj_id': origPrjId,
      'orig_cms_token': origCmsToken,
      'updated_at': DateTime.now().toIso8601String(),
    };
  }

  ///copy with
  TemplatePrjObject copyWith({
    final int? id,
    final int? prjId,
    final int? origPrjId,
    final String? idKey,
    final String? title,
    final String? description,
    final String? version,
    final String? link,
    final int? authorId,
    final String? authorName,
    final String? image,
    final String? coverImage,
    final bool? isOnline,
    final bool? isMarketplace,
    final String? price,
    final String? currency,
    final String? origCmsToken,
    final DateTime? updatedAt,
  }) =>
      TemplatePrjObject(
        id: id ?? this.id,
        prjId: prjId ?? this.prjId,
        origPrjId: origPrjId ?? this.origPrjId,
        origCmsToken: origCmsToken ?? this.origCmsToken,
        idKey: idKey ?? this.idKey,
        title: title ?? this.title,
        description: description ?? this.description,
        version: version ?? this.version,
        link: link ?? this.link,
        authorId: authorId ?? this.authorId,
        authorName: authorName ?? this.authorName,
        image: image ?? this.image,
        coverImage: coverImage ?? this.coverImage,
        isOnline: isOnline ?? this.isOnline,
        isMarketplace: isMarketplace ?? this.isMarketplace,
        price: price ?? this.price,
        currency: currency ?? this.currency,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  /// Template's id
  final int id;

  ///Unique immutable Template identifiable key (Uuid)
  final String? idKey;

  /// Template's  project id this is the artifact_id of original project
  /// or if are Teta made, the original project
  final int? prjId;

  ///original project id, used for cms initialize in try now
  final int? origPrjId;

  ///Cms token of the original project, used for cms initialize in try now
  final String? origCmsToken;

  /// Template's title
  final String? title;

  /// Template's description
  final String? description;

  /// Template's version
  final String? version;

  /// Template's link to try app
  final String? link;

  /// Template's reference to author (user_id of who created this)
  final int? authorId;

  ///Author Name
  final String? authorName;

  /// Template's image (Cover Image of teta templates)
  final String? image;

  /// Template's cover image for marketplace items
  final String? coverImage;

  /// Template's flag to understand if this is online
  final bool? isOnline;

  /// Template's flag to understand if this is for marketplace (TBD)
  final bool? isMarketplace;

  /// Template's price (for marketplace, can be gratis, setted at 0)
  final String? price;

  /// Template's currency (EUR, USD, ...)
  final String? currency;

  ///Templates's update date
  final DateTime? updatedAt;

  @override
  String toString() =>
      'TemplatePrjObject { id: $id, prjId: $prjId, id_key: $idKey, title: $title, description: $description, author_name: $authorName author_id: $authorId, image: $image, cover_image: $coverImage, isOnline: $isOnline, isMarketplace: $isMarketplace, price: $price, currency: $currency, orig_prj_id: $origPrjId, orig_cms_token: $origCmsToken, updated_at: $updatedAt }';
}
