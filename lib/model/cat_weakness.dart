const String tableCatWeakness = 'cat_weakness';

class CatWeaknessFields {
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

  CatWeakness copy({
    int? id,
    int? catId,
    String? weakness,
  }) =>
      CatWeakness(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        weakness: weakness ?? this.weakness,
      );

  Map<String, Object?> toJson() => {
        CatWeaknessFields.id: id,
        CatWeaknessFields.catId: catId,
        CatWeaknessFields.weakness: weakness,
      };
}
