class CustomFontEntity {
  final String name;
  final String publicUrl;

  const CustomFontEntity({
    required this.name,
    required this.publicUrl,
  });

  factory CustomFontEntity.fromJson(Map<String, dynamic> json) {
    return CustomFontEntity(
      name: json['file_name'],
      publicUrl: json['public_url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'file_name': name,
        'public_url': publicUrl,
      };
}
