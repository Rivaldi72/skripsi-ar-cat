const String tableCatStrength = 'cat_strength';

class CatStrengthFields {
  static final List<String> values = [id, catId, strength];

  static const String id = '_id';
  static const String catId = 'cat_id';
  static const String strength = 'strength';
}

class CatStrength {
  final int? id;
  final int catId;
  final String strength;

  const CatStrength({
    this.id,
    required this.catId,
    required this.strength,
  });

  factory CatStrength.fromJson(Map<String, dynamic> json) {
    return CatStrength(
      id: json[CatStrengthFields.id],
      catId: json[CatStrengthFields.catId],
      strength: json[CatStrengthFields.strength],
    );
  }

  Map<String, Object?> toJson() => {
        CatStrengthFields.id: id,
        CatStrengthFields.catId: catId,
        CatStrengthFields.strength: strength,
      };
}
