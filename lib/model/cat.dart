const String tableCat = 'cats';

class CatFields {
  static const String id = '_id';
  static const String name = 'name';
  static const String type = 'type';
}

class Cat {
  final int? id;
  final String name;
  final String type;

  const Cat({
    this.id,
    required this.name,
    required this.type,
  });

  Cat copy({
    int? id,
    String? name,
    String? type,
  }) =>
      Cat(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
      );

  Map<String, Object?> toJson() => {
        CatFields.id: id,
        CatFields.name: name,
        CatFields.type: type,
      };
}
