const String tableCatFunFact = 'cat_fun_fact';

class CatFunFactFields {
  static const String id = '_id';
  static const String funFact = 'fun_fact';
}

class CatFunFact {
  final int? id;
  final String funFact;

  const CatFunFact({
    this.id,
    required this.funFact,
  });

  Map<String, Object?> toJson() => {
        CatFunFactFields.id: id,
        CatFunFactFields.funFact: funFact,
      };
}
