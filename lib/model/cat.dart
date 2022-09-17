const String tableCat = 'cats';

class CatFields {
  static final List<String> values = [id, name, type];

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

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json[CatFields.id],
      name: json[CatFields.name],
      type: json[CatFields.type],
    );
  }

  Map<String, Object?> toJson() => {
        CatFields.id: id,
        CatFields.name: name,
        CatFields.type: type,
      };
}
