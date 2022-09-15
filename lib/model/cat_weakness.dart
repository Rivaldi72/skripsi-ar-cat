const String tableCatWeakness = 'cat_weakness';

class CatWeaknessFields {
  static const String id = '_id';
  static const String catId = 'cat_id';
  static const String waekness = 'waekness';
}

class CatWeakness {
  final int? id;
  final int catId;
  final String waekness;

  const CatWeakness({
    this.id,
    required this.catId,
    required this.waekness,
  });

  Map<String, Object?> toJson() => {
        CatWeaknessFields.id: id,
        CatWeaknessFields.catId: catId,
        CatWeaknessFields.waekness: waekness,
      };
}
