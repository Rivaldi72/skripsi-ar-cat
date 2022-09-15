import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:skripsi_ar_cat/model/cat.dart';
import 'package:skripsi_ar_cat/model/cat_body.dart';
import 'package:skripsi_ar_cat/model/cat_weakness.dart';
import 'package:skripsi_ar_cat/model/cat_strength.dart';
import 'package:skripsi_ar_cat/model/cat_detail.dart';
import 'package:skripsi_ar_cat/model/cat_fun_fact.dart';

class CatDatabase {
  static final CatDatabase instance = CatDatabase._init();
  static Database? _database;
  CatDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('cats.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
        CREATE TABLE $tableCat(
          ${CatFields.id} $idType,
          ${CatFields.name} $textType,
          ${CatFields.type} $textType,
        )
    ''');

    await db.execute('''
        CREATE TABLE $tableCatDetail(
          ${CatDetailFields.id} $idType,
          ${CatDetailFields.catId} $integerType,
          ${CatDetailFields.about} $textType,
          ${CatDetailFields.description} $textType,
        )
    ''');

    await db.execute('''
        CREATE TABLE $tableCatBody(
          ${CatBodyFields.id} $idType,
          ${CatBodyFields.catId} $integerType,
          ${CatBodyFields.size} $textType,
          ${CatBodyFields.head} $textType,
          ${CatBodyFields.nose} $textType,
          ${CatBodyFields.ear} $textType,
          ${CatBodyFields.eye} $textType,
          ${CatBodyFields.body} $textType,
          ${CatBodyFields.nail} $textType,
          ${CatBodyFields.fur} $textType,
          ${CatBodyFields.tail} $textType,
        )
    ''');

    await db.execute('''
        CREATE TABLE $tableCatWeakness(
          ${CatWeaknessFields.id} $idType,
          ${CatWeaknessFields.catId} $integerType,
          ${CatWeaknessFields.waekness} $textType,
        )
    ''');

    await db.execute('''
        CREATE TABLE $tableCatStrength(
          ${CatStrengthFields.id} $idType,
          ${CatStrengthFields.catId} $integerType,
          ${CatStrengthFields.strength} $textType,
        )
    ''');

    await db.execute('''
        CREATE TABLE $tableCatFunFact(
          ${CatFunFactFields.id} $idType,
          ${CatFunFactFields.funFact} $textType,
        )
    ''');
  }

  Future<Cat> createCat(Cat cat) async {
    final db = await instance.database;
    final id = await db.rawInsert('''
      INSERT INTO "cat" ("id", "name", "type") VALUES ('1', 'Abyssinian', 'Shorthair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('2', 'American Shorthair', 'Shorthair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('3', 'American Wirehair', 'Shorthair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('4', 'Angora', 'Longhair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('5', 'Balinese', 'Longhair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('6', 'Birman', 'Longhair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('7', 'Burmese', 'Shorthair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('8', 'Colourpoint (Himalayan)', 'Longhair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('9', 'Cymric (Longhaired Manx)', 'Longhair');
      INSERT INTO "cat" ("id", "name", "type") VALUES ('10', 'Egyptian Mau', 'Shorthair');
''');
    // final id = await db.insert(tableCat, cat.toJson());

    return cat.copy(id: id);
  }

  Future<CatDetail> createCatDetail(CatDetail catDetail) async {
    final db = await instance.database;
    final id = await db.rawInsert('''
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('1', '1', 'Bangsa Mesir melarang perdagangan ras kucing ini, bahkan mendirikan kuil khusus untuk memujanya. Mumi kucing Aby juga banyak ditemukan pada makam-makam bangsa Mesir kuno.', 'Abyssinian adalah salah satu ras kucing tertua yang pernah diketahui. Penampilannya menyerupai lukisan dan patung yang berasal dari zaman mesir kuno. Kata abyssinian berasal dari Ethiopia yang diyakini merupakan negara asal jenis kucing ini. Namun, berdasarkan penelitian ahli genetik, kemungkinan besar Abyssinian berasal dari pesisir Laut India dan sebagian Asia Tenggara. Kucing Aby dibawa ke Inggris untuk melindungi ladang gandum dari tikus. Kucing ini pertama kali mengikuti show di Inggris tahun 1871.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('2', '2', 'Seekor ASH warna brown tabby ditawarkan dengan harga USD 2.500 pada kontes kucing kedua yang diadakan di Madison Square Garden tahun 1896.', 'American shorthair (ASH) merupakan keturunan/perkembangan dari ras european shorthair dan british shorthair. Awalnya, berkembang dari daerah Amerika bagian utara yang beriklim keras. ASH beradaptasi dengan baik dan secara bertahap mengikuti perkembangan manusia hingga menyebar ke seluruh Amerika.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('3', '3', 'Kucing betina dari ras AWH sering mengalami silent heat/silent season, yaitu berahi (waktunya kawin) yang tidak terlihat tandanya sama sekali. Ini adalah tantangan untuk para breeder.', 'American wirehair (AWH) adalah kucing yang sangat dekat dan berorientasi pada manusia. Mirip dengan anjing, ia akan mengikuti pemiliknya kemana pun sang pemilik pergi. AWH mudah beradaptasi dengan manusia dan hewan lain. AWH juga termasuk kucing yang pendiam dan jarang bersuara. Ras ini disukai karena perawatannya relatif mudah dan tahan terhadap penyakit. Kelebihan lainnya adalah sifatnya yang tidak berisik dan sangat mencintai pemiliknya.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('4', '4', 'Orang awam sering menggunakan kata angora untuk kucing berbulu panjang, termasuk kucing persia yang berasal dari Iran. Padahal, angora berasal dari kota Angora (Ankara, Turki). Kesalahan ini mulai terjadi sekitar 250 tahun lalu. Ketika kontes kucing (cat show) mulai diadakan di Inggris pada tahun 1870, kategori kucing berbulu panjang sangat populer. Angora dan persia turut serta yang dibawa oleh pedagang yang berbisnis di Timur Tengah. Sejak saat itulah sifat sifat genetik persia dan angora mulai berkembang menjadi lebih murni dan spesifik.', 'Bentuk tubuh yang besar, tebal, kepala bulat, dan badan cobby identik dengan kucing persia. Sementara itu, angora lebih langsing, panjang, lentur dan luwes, serta kepala berbentuk lancip (segi tiga). Kucing ras angora mempunyai gaya lemah gemulai dan anggun. Badan panjang dan langsing dengan kaki dan ekor panjang. Ekor berbulu tebal dan mengembang, seperti ekor musang. Kepala berbentuk seperti segi tiga dengan telinga lebar.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('5', '5', 'Sekitar pertengahan tahun 50-an, dua orang breeder kucing, Marion Dorsey (RaiMar Cattery, California) dan Helen Smith (MerryMews Cattery, New York) memutuskan untuk mengembangbiakkan longhaired siamese. Helen Smith menamakan ras tersebut balinese karena keanggunan kucing tersebut menyerupai keanggunan penari bali.', 'Ras kucing balinese adalah kucing dengan tipe tubuh kucing oriental (langsing dan panjang) ditutupi bulu panjang dengan pola warna seperti ras siam (colorpoint). Ras ini terbentuk secara spontan sebagai akibat dari mutasi ras siam. Perbedaannya dengan siam hanya terletak pada panjang bulu. Balinese terpecah menjadi dua, yaitu tradisional dan modern. Balinese tradisional mempunyai badan yang lebih berat dan tegap, bentuk kepala yang lebih bundar, dan telinga yang lebih kecil dibandingkan dengan balinese modern. Balinese tradisional mempunyai bulu medium panjang (5 cm) yang menutupi seluruh tubuh. Sementara itu, balinese modern mempunyai bulu pendek di kepala serta badan. Bulu panjang hanya terdapat di bagian ekor saja.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('6', '6', '-', 'Ras birman awal (sekitar tahun 1925) berasal dari sepasang kucing bernama Orloff dan Xenia de Kaabaa. Ras ini mengalami kemunduran akibat resesi dan perang dunia kedua. Hanya satu pasang kucing yang berhasil selamat melewati masa-masa sulit tersebut. Ras birman mulai diakui di Inggris pada tahun 1966. Tahun berikutnya Amerika mengakui ras ini, ketika CFA (Cat Fanciers Association) mengakui standardisasi ras tersebut.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('7', '7', 'Ras burmese dikenal di Amerika sejak tahun 1936 dan diakui oleh CFA tahun 1947. Pada saat itu hanya warna sable yang diakui, dan awal 1960-an mulai dihasilkan warna lain. Breeder di Inggris mengimpor burmese pertama dari US pada tahun 1947 dan mulai diakui keberadaannya tahun 1952.', 'Ras ini adalah kucing yang pintar. halus, dan rapi. Burmese merupakan ras kucing yang mudah disisir, mudah disayangi, dan lebih pintar jika dibandingkan dengan ras kucing lainnya. Jika ingin memelihara ras ini, tetapi waktu untuknya terbatas, peliharalah minimal dua ekor. Tujuannya agar kucing memiliki teman bermain saat ditinggalkan bepergian. Hal ini sangat menyenangkan karena ras ini memang akan lebih menghibur saat tidak sendirian. Kucing ini ramah bagi pengunjung/tamu yang datang ke rumah dan sangat cocok dengan anak-anak serta sangat suka tidur di tempat tidur manusia.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('8', '8', 'Ras ini murni hasil persilangan siamese dengan black dan blues berbulu panjang dan menghasilkan ras yang colourpoint. Setelah itu, diseleksi yang berpola himalayan, matanya biru, dengan perawakan persia itulah colourpoint. Ras ini mulai mengikuti kontes tahun 1955 di Inggris dengan sebutan himalayan.', 'Ras colourpoint sebenarnya persia yang berwarna himalayan. Nama himalayan diberikan karena pola bulu di seluruh tubuhnya seperti kelinci himalayan yang warnanya gelap di bagian wajah, kaki, dan ekor. Ras ini lebih senang memilih sendiri aktivitas yang ingin dilakukannya dan lebih senang jika dibebaskan keluar masuk rumah atau kebun. Sebaiknya, jangan memelihara ras ini jika tidak punya banyak waktu untuk memanjakan dan menyisirnya. Ras ini sangat cantik, sangat mudah disayangi, dan ingin selalu diagung-agungkan. Ras ini dikenal juga dengan nama himmy.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('9', '9', 'Longhaired Manx (Cymric) pertama kali muncul di Kanada tahun 1960an sebagai hasil persilangan. Cymric saat ini sudah cukup banyak dipertunjukkan, terutama di Amerika Utara.', 'Ras ini berpenampilan unik dan beda dari ras lainnya karena tidak berekor, tetapi berbulu panjang. Ras ini sangat cocok dijadikan peliharaan. Ras ini juga ahli menangkap tikus sehingga sangat cocok di perkantoran dan hotel. Larinya yang kencang dan kemampuan berburunya yang baik membuatnya sangat senang menjelajah serta bermain-main.');
      INSERT INTO "main"."cat_detail" ("id", "cat_id", "about", "description") VALUES ('10', '10', 'Egyptian mau adalah ras kucing domestik tertua. Kucing ini dipercaya turunan kucing liar Afrika (Felis lybica ocreata). Proses domestikasi ras ini diperkirakan sekitar tahun 4000-2000 sebelum masehi (SM).', 'Egyptian mau adalah kucing domestik tercepat karena mampu berlari dengan kecepatan 36 mph (58 km/jam). Kucing ini adalah miniatur cheetah. Seperti cheetah, mau mempunyai kaki belakang yang panjang dan kulit yang tipis dan lentur di sekitar perut dan kaki belakang. Hal ini menyebabkan kaki dapat meregang lebih jauh pada saat berlari. Mau mempunyai suara yang unik. Kadang-kadang mengeluarkan suara mengeong yang mirip bunyi jangkrik atau suara orang terkekeh seperti hyena. Perilaku lain yang cukup menarik adalah saat kucing ini sedang senang, yaitu menggerakkan kaki belakang ke atasbawah seperti menari. Egyptian mau tergolong sangat pintar, aktif, dan penjelajah. Kucing ini cenderung pemalu terhadap orang yang tidak dikenalnya.');
''');

    return catDetail.copy(id: id);
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
