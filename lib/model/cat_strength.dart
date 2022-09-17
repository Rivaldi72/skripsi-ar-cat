const String tableCatStrength = 'cat_strength';

class CatStrengthFields {
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

  CatStrength copy({
    int? id,
    int? catId,
    String? strength,
  }) =>
      CatStrength(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        strength: strength ?? this.strength,
      );

  Map<String, Object?> toJson() => {
        CatStrengthFields.id: id,
        CatStrengthFields.catId: catId,
        CatStrengthFields.strength: strength,
      };
}
