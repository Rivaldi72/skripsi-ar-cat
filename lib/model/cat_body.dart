const String tableCatBody = 'cat_body';

class CatBodyFields {
  static const String id = '_id';
  static const String catId = 'cat_id';
  static const String size = 'size';
  static const String head = 'head';
  static const String nose = 'nose';
  static const String ear = 'ear';
  static const String eye = 'eye';
  static const String body = 'body';
  static const String nail = 'nail';
  static const String fur = 'fur';
  static const String tail = 'tail';
}

class CatBody {
  final int? id;
  final int catId;
  final String size;
  final String head;
  final String nose;
  final String ear;
  final String eye;
  final String body;
  final String nail;
  final String fur;
  final String tail;

  const CatBody({
    this.id,
    required this.catId,
    required this.size,
    required this.head,
    required this.nose,
    required this.ear,
    required this.eye,
    required this.body,
    required this.nail,
    required this.fur,
    required this.tail,
  });

  CatBody copy({
    int? id,
    int? catId,
    String? size,
    String? head,
    String? nose,
    String? ear,
    String? eye,
    String? body,
    String? nail,
    String? fur,
    String? tail,
  }) =>
      CatBody(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        size: size ?? this.size,
        head: head ?? this.head,
        nose: nose ?? this.nose,
        ear: ear ?? this.ear,
        eye: eye ?? this.eye,
        body: body ?? this.body,
        nail: nail ?? this.nail,
        fur: fur ?? this.fur,
        tail: tail ?? this.tail,
      );

  Map<String, Object?> toJson() => {
        CatBodyFields.id: id,
        CatBodyFields.catId: catId,
        CatBodyFields.size: size,
        CatBodyFields.head: head,
        CatBodyFields.nose: nose,
        CatBodyFields.ear: ear,
        CatBodyFields.eye: eye,
        CatBodyFields.body: body,
        CatBodyFields.nail: nail,
        CatBodyFields.fur: fur,
        CatBodyFields.tail: tail,
      };
}
