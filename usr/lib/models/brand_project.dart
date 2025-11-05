class BrandProject {
  final String id;
  final String name;
  final String industry;
  final String tagline;
  final String? description;
  final String? logoUrl;
  final List<String>? colorPalette;
  final List<String>? fonts;
  final DateTime createdAt;
  final DateTime? updatedAt;

  BrandProject({
    required this.id,
    required this.name,
    required this.industry,
    required this.tagline,
    this.description,
    this.logoUrl,
    this.colorPalette,
    this.fonts,
    required this.createdAt,
    this.updatedAt,
  });

  factory BrandProject.fromJson(Map<String, dynamic> json) {
    return BrandProject(
      id: json['id'] as String,
      name: json['name'] as String,
      industry: json['industry'] as String,
      tagline: json['tagline'] as String,
      description: json['description'] as String?,
      logoUrl: json['logo_url'] as String?,
      colorPalette: json['color_palette'] != null
          ? List<String>.from(json['color_palette'] as List)
          : null,
      fonts: json['fonts'] != null
          ? List<String>.from(json['fonts'] as List)
          : null,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'industry': industry,
      'tagline': tagline,
      'description': description,
      'logo_url': logoUrl,
      'color_palette': colorPalette,
      'fonts': fonts,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
