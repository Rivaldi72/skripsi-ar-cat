const String tableCatWeakness = 'cat_weakness';

class CatWeaknessFields {
  static final List<String> values = [id, catId, weakness];

  static const String id = '_id';
  static const String catId = 'cat_id';
  static const String weakness = 'weakness';
}

class CatWeakness {
  final int? id;
  final int catId;
  final String weakness;

  const CatWeakness({
    this.id,
    required this.catId,
    required this.weakness,
  });

  factory CatWeakness.fromJson(Map<String, dynamic> json) {
    return CatWeakness(
      id: json[CatWeaknessFields.id],
      catId: json[CatWeaknessFields.catId],
      weakness: json[CatWeaknessFields.weakness],
    );
  }

  Map<String, Object?> toJson() => {
        CatWeaknessFields.id: id,
        CatWeaknessFields.catId: catId,
        CatWeaknessFields.weakness: weakness,
      };
}
