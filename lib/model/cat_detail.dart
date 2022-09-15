const String tableCatDetail = 'cat_detail';

class CatDetailFields {
  static const String id = '_id';
  static const String catId = 'cat_id';
  static const String about = 'about';
  static const String description = 'description';
}

class CatDetail {
  final int? id;
  final int catId;
  final String about;
  final String description;

  const CatDetail({
    this.id,
    required this.catId,
    required this.about,
    required this.description,
  });

  CatDetail copy({
    int? id,
    int? catId,
    String? about,
    String? description,
  }) =>
      CatDetail(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        about: about ?? this.about,
        description: description ?? this.description,
      );

  Map<String, Object?> toJson() => {
        CatDetailFields.id: id,
        CatDetailFields.catId: catId,
        CatDetailFields.about: about,
        CatDetailFields.description: description,
      };
}
