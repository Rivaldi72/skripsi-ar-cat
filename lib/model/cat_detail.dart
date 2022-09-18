const String tableCatDetail = 'cat_detail';

class CatDetailFields {
  static final List<String> values = [id, catId, about, description];

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

  factory CatDetail.fromJson(Map<String, dynamic> json) {
    return CatDetail(
      id: json[CatDetailFields.id],
      catId: json[CatDetailFields.catId],
      about: json[CatDetailFields.about],
      description: json[CatDetailFields.description],
    );
  }

  Map<String, Object?> toJson() => {
        CatDetailFields.id: id,
        CatDetailFields.catId: catId,
        CatDetailFields.about: about,
        CatDetailFields.description: description,
      };
}
