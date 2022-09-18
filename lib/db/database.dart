import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:skripsi_ar_cat/model/cat.dart';
import 'package:skripsi_ar_cat/model/cat_body.dart';
import 'package:skripsi_ar_cat/model/cat_weakness.dart';
import 'package:skripsi_ar_cat/model/cat_strength.dart';
import 'package:skripsi_ar_cat/model/cat_detail.dart';

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

  _createDB(Database db, int version) {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    db.execute('''
        CREATE TABLE $tableCat(
          ${CatFields.id} $idType,
          ${CatFields.name} $textType,
          ${CatFields.type} $textType
        )
    ''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('1', 'Abyssinian', 'Shorthair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('2', 'American Shorthair', 'Shorthair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('3', 'American Wirehair', 'Shorthair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('4', 'Angora', 'Longhair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('5', 'Balinese', 'Longhair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('6', 'Birman', 'Longhair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('7', 'Burmese', 'Shorthair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('8', 'Colourpoint (Himalayan)', 'Longhair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('9', 'Cymric (Longhaired Manx)', 'Longhair');''');
    db.rawInsert(
        '''INSERT INTO "$tableCat" ("${CatFields.id}", "${CatFields.name}", "${CatFields.type}") VALUES ('10', 'Egyptian Mau', 'Shorthair');''');

    db.execute('''
        CREATE TABLE $tableCatDetail(
          ${CatDetailFields.id} $idType,
          ${CatDetailFields.catId} $integerType,
          ${CatDetailFields.about} $textType,
          ${CatDetailFields.description} $textType
        )
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('1', '1', 'Bangsa Mesir melarang perdagangan ras kucing ini, bahkan mendirikan kuil khusus untuk memujanya. Mumi kucing Aby juga banyak ditemukan pada makam-makam bangsa Mesir kuno.', 'Abyssinian adalah salah satu ras kucing tertua yang pernah diketahui. Penampilannya menyerupai lukisan dan patung yang berasal dari zaman mesir kuno. Kata abyssinian berasal dari Ethiopia yang diyakini merupakan negara asal jenis kucing ini. Namun, berdasarkan penelitian ahli genetik, kemungkinan besar Abyssinian berasal dari pesisir Laut India dan sebagian Asia Tenggara. Kucing Aby dibawa ke Inggris untuk melindungi ladang gandum dari tikus. Kucing ini pertama kali mengikuti show di Inggris tahun 1871.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('2', '2', 'Seekor ASH warna brown tabby ditawarkan dengan harga USD 2.500 pada kontes kucing kedua yang diadakan di Madison Square Garden tahun 1896.', 'American shorthair (ASH) merupakan keturunan/perkembangan dari ras european shorthair dan british shorthair. Awalnya, berkembang dari daerah Amerika bagian utara yang beriklim keras. ASH beradaptasi dengan baik dan secara bertahap mengikuti perkembangan manusia hingga menyebar ke seluruh Amerika.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('3', '3', 'Kucing betina dari ras AWH sering mengalami silent heat/silent season, yaitu berahi (waktunya kawin) yang tidak terlihat tandanya sama sekali. Ini adalah tantangan untuk para breeder.', 'American wirehair (AWH) adalah kucing yang sangat dekat dan berorientasi pada manusia. Mirip dengan anjing, ia akan mengikuti pemiliknya kemana pun sang pemilik pergi. AWH mudah beradaptasi dengan manusia dan hewan lain. AWH juga termasuk kucing yang pendiam dan jarang bersuara. Ras ini disukai karena perawatannya relatif mudah dan tahan terhadap penyakit. Kelebihan lainnya adalah sifatnya yang tidak berisik dan sangat mencintai pemiliknya.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('4', '4', 'Orang awam sering menggunakan kata angora untuk kucing berbulu panjang, termasuk kucing persia yang berasal dari Iran. Padahal, angora berasal dari kota Angora (Ankara, Turki). Kesalahan ini mulai terjadi sekitar 250 tahun lalu. Ketika kontes kucing (cat show) mulai diadakan di Inggris pada tahun 1870, kategori kucing berbulu panjang sangat populer. Angora dan persia turut serta yang dibawa oleh pedagang yang berbisnis di Timur Tengah. Sejak saat itulah sifat sifat genetik persia dan angora mulai berkembang menjadi lebih murni dan spesifik.', 'Bentuk tubuh yang besar, tebal, kepala bulat, dan badan cobby identik dengan kucing persia. Sementara itu, angora lebih langsing, panjang, lentur dan luwes, serta kepala berbentuk lancip (segi tiga). Kucing ras angora mempunyai gaya lemah gemulai dan anggun. Badan panjang dan langsing dengan kaki dan ekor panjang. Ekor berbulu tebal dan mengembang, seperti ekor musang. Kepala berbentuk seperti segi tiga dengan telinga lebar.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('5', '5', 'Sekitar pertengahan tahun 50-an, dua orang breeder kucing, Marion Dorsey (RaiMar Cattery, California) dan Helen Smith (MerryMews Cattery, New York) memutuskan untuk mengembangbiakkan longhaired siamese. Helen Smith menamakan ras tersebut balinese karena keanggunan kucing tersebut menyerupai keanggunan penari bali.', 'Ras kucing balinese adalah kucing dengan tipe tubuh kucing oriental (langsing dan panjang) ditutupi bulu panjang dengan pola warna seperti ras siam (colorpoint). Ras ini terbentuk secara spontan sebagai akibat dari mutasi ras siam. Perbedaannya dengan siam hanya terletak pada panjang bulu. Balinese terpecah menjadi dua, yaitu tradisional dan modern. Balinese tradisional mempunyai badan yang lebih berat dan tegap, bentuk kepala yang lebih bundar, dan telinga yang lebih kecil dibandingkan dengan balinese modern. Balinese tradisional mempunyai bulu medium panjang (5 cm) yang menutupi seluruh tubuh. Sementara itu, balinese modern mempunyai bulu pendek di kepala serta badan. Bulu panjang hanya terdapat di bagian ekor saja.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('6', '6', '-', 'Ras birman awal (sekitar tahun 1925) berasal dari sepasang kucing bernama Orloff dan Xenia de Kaabaa. Ras ini mengalami kemunduran akibat resesi dan perang dunia kedua. Hanya satu pasang kucing yang berhasil selamat melewati masa-masa sulit tersebut. Ras birman mulai diakui di Inggris pada tahun 1966. Tahun berikutnya Amerika mengakui ras ini, ketika CFA (Cat Fanciers Association) mengakui standardisasi ras tersebut.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('7', '7', 'Ras burmese dikenal di Amerika sejak tahun 1936 dan diakui oleh CFA tahun 1947. Pada saat itu hanya warna sable yang diakui, dan awal 1960-an mulai dihasilkan warna lain. Breeder di Inggris mengimpor burmese pertama dari US pada tahun 1947 dan mulai diakui keberadaannya tahun 1952.', 'Ras ini adalah kucing yang pintar. halus, dan rapi. Burmese merupakan ras kucing yang mudah disisir, mudah disayangi, dan lebih pintar jika dibandingkan dengan ras kucing lainnya. Jika ingin memelihara ras ini, tetapi waktu untuknya terbatas, peliharalah minimal dua ekor. Tujuannya agar kucing memiliki teman bermain saat ditinggalkan bepergian. Hal ini sangat menyenangkan karena ras ini memang akan lebih menghibur saat tidak sendirian. Kucing ini ramah bagi pengunjung/tamu yang datang ke rumah dan sangat cocok dengan anak-anak serta sangat suka tidur di tempat tidur manusia.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('8', '8', 'Ras ini murni hasil persilangan siamese dengan black dan blues berbulu panjang dan menghasilkan ras yang colourpoint. Setelah itu, diseleksi yang berpola himalayan, matanya biru, dengan perawakan persia itulah colourpoint. Ras ini mulai mengikuti kontes tahun 1955 di Inggris dengan sebutan himalayan.', 'Ras colourpoint sebenarnya persia yang berwarna himalayan. Nama himalayan diberikan karena pola bulu di seluruh tubuhnya seperti kelinci himalayan yang warnanya gelap di bagian wajah, kaki, dan ekor. Ras ini lebih senang memilih sendiri aktivitas yang ingin dilakukannya dan lebih senang jika dibebaskan keluar masuk rumah atau kebun. Sebaiknya, jangan memelihara ras ini jika tidak punya banyak waktu untuk memanjakan dan menyisirnya. Ras ini sangat cantik, sangat mudah disayangi, dan ingin selalu diagung-agungkan. Ras ini dikenal juga dengan nama himmy.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('9', '9', 'Longhaired Manx (Cymric) pertama kali muncul di Kanada tahun 1960an sebagai hasil persilangan. Cymric saat ini sudah cukup banyak dipertunjukkan, terutama di Amerika Utara.', 'Ras ini berpenampilan unik dan beda dari ras lainnya karena tidak berekor, tetapi berbulu panjang. Ras ini sangat cocok dijadikan peliharaan. Ras ini juga ahli menangkap tikus sehingga sangat cocok di perkantoran dan hotel. Larinya yang kencang dan kemampuan berburunya yang baik membuatnya sangat senang menjelajah serta bermain-main.');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatDetail" ("${CatDetailFields.id}", "${CatDetailFields.catId}", "${CatDetailFields.about}", "${CatDetailFields.description}") VALUES ('10', '10', 'Egyptian mau adalah ras kucing domestik tertua. Kucing ini dipercaya turunan kucing liar Afrika (Felis lybica ocreata). Proses domestikasi ras ini diperkirakan sekitar tahun 4000-2000 sebelum masehi (SM).', 'Egyptian mau adalah kucing domestik tercepat karena mampu berlari dengan kecepatan 36 mph (58 km/jam). Kucing ini adalah miniatur cheetah. Seperti cheetah, mau mempunyai kaki belakang yang panjang dan kulit yang tipis dan lentur di sekitar perut dan kaki belakang. Hal ini menyebabkan kaki dapat meregang lebih jauh pada saat berlari. Mau mempunyai suara yang unik. Kadang-kadang mengeluarkan suara mengeong yang mirip bunyi jangkrik atau suara orang terkekeh seperti hyena. Perilaku lain yang cukup menarik adalah saat kucing ini sedang senang, yaitu menggerakkan kaki belakang ke atasbawah seperti menari. Egyptian mau tergolong sangat pintar, aktif, dan penjelajah. Kucing ini cenderung pemalu terhadap orang yang tidak dikenalnya.');
    ''');

    db.execute('''
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
          ${CatBodyFields.tail} $textType
        )
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('1', '1', 'Sedang', 'Berbentuk segi tiga dengan sudut agak membulat', '-', 'Terbuka lebar', 'Terbuka lebar dan berbentuk almond', 'Langsing dan anggun', 'Kecil dan berbentuk oval', 'Berbintik-bintik (ticked agouti)', 'Berukuran medium, luas di dasarnya, dan tidak kusut');
    ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('2', '2', 'Sedang--besar', 'Besar dengan pipi yang penuh', 'Sedang', '- Ukuran sedang dan lebar dengan ujung melengkung\n- Jarak antartelinga dekat', 'Besar, bulat, dan lebar saat sedang bangun', 'Langsing dan anggun', 'Penuh dan bulat dengan kuku berat', 'Tebal, pendek, dan tidak kusut', 'Berukuran sedang dan tidak kusut');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('3', '3', 'Sedang', 'Bentuk kepala agak bulat dengan tulang pipi menonjol', '-', 'Sedang, terpisah lebar, dan bulat', 'Besar, bulat, bersinar, dan bersih', 'Perototan tebal', 'Oval dan ringkas', '- Padat dan kasar\n- Helai bulunya berlukuk-lekuk\n- Jika disentuh, terasa seperti pegas atau wol', 'Panjang sedang, tebal pada pangkal, kemudian menipis dengan ujung tumpul');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('4', '4', 'Sedang', 'Berukuran medium, lebar, dan lembut', 'Mancung', '- Tinggi dan berada di atas kepala\n- Ukurannya besar dan pointed serta dasarnya lebar', 'Besar, bulat, hingga oval sedikit merosot', 'Panjang, anggun, dan luwes', 'Kuat dan kokoh', 'Panjangnya sedang, mengkilap, dan luwes', 'Panjang dan meruncing serta melebar di dasarnya');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('5', '5', 'Sedang', 'Panjang, berbentuk segi tiga', 'Mancung dan lurus tanpa ada terpisah', 'Bagian dasar melebar dan besar', 'Berukuran medium dan berbentuk almond', '- Panjang dan langsing\n- Bentuk oval dan berukuran kecil', '- Besar, bulat, dan kokoh\n- Lima jari di kaki depan dan empat jari di kaki belakang', '- Lembut, mengkilap, dan merekah.\n- Panjang sekitar 5 cm', 'Panjang dan tipis');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('6', '6', 'Sedang', 'Kepala lebar dan bulat', 'Ada sedikit lekukan', 'Berukuran sedang dengan ujung melengkung', 'Berwarna biru dan bulat', 'Tegap dengan panjang sedang', 'Berwarna putih', 'Bulu leher dan ekor tebal dan halus. Warna bulu badan lebih pucat dibandingkan dengan warna point pada kedua telinga, muka, kaki, dan ekor', 'Panjang dan tidak kusut');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('7', '7', 'Sedang', 'Melingkar pada bagian atas antara kedua telinganya', 'Berukuran sedang', 'Melingkar dan terbuka di dasarnya', 'Berbentuk seperti oriental, tajam di bagian atasnya dan melingkar di bawahnya (di Inggris), sedangkan di Amerika Serikat bentuk matanya melingkar', 'Garis punggung rata, dada melengkung, dan memperlihatkan perototan yang cukup baik', 'Rapi dan berbentuk oval', 'Bulu pendek, halus, dan mengkilap dengan tekstur seperti satin', 'Ekor lurus,  panjangnya sedang, mengilap, dan teturai jatuh je lantai');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('8', '8', 'Kecil--Sedang', 'Lebar dan bulat', 'Agak pesek', 'Kecil, berujung bula, bagian dasar melebar, tidak terlalu terbuka pada dasarnya, terpisah cukup jauh dan berada di bawah kepala', 'Berbentuk bulat dan lebar', 'Dada lebar dan membulat dengan bagian punggung sedikit membulat, ukuran dan posisi perut bagian belakang membulat, dan lebih rendah (cobby)', '- Besar, bulat, dan lebar\n- Lima jari di kaki depan dan empat jari di kaki belakang', 'Panjang, tebal, lembut, mengilap, dan menutupi seluruh badan', 'Pendek, penuh, dan berat kebawah');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('9', '9', 'Sedang', 'Berukuran besar dan bulat dengan tulang pipi yang jelas', 'Hidung sedang dengan batas yang lembut', '- Besar, dan lebar pada dasarnya\n- Letaknya tepat diatas kepala', '- Besar, bulat, dan ekspresif\n- Bagian luar mata lebih tinggi daripada bagian dalam', 'Solid, bulat dengan bagian belakang yang pendek', 'Kuku pada cakar rapi dan kuat', 'Panjangnya sedang dengan ketebalan double, mengilap, dan glossy', 'Tanpa ekor dengan cekungan di akhir ekornya');
          ''');
    db.rawInsert('''
      INSERT INTO "$tableCatBody" ("${CatBodyFields.id}", "${CatBodyFields.catId}", "${CatBodyFields.size}", "${CatBodyFields.head}", "${CatBodyFields.nose}", "${CatBodyFields.ear}", "${CatBodyFields.eye}", "${CatBodyFields.body}", "${CatBodyFields.nail}", "${CatBodyFields.fur}", "${CatBodyFields.tail}") VALUES ('10', '10', 'Sedang', 'Bentuknya bulat, tetapi flat', 'Sedang', 'Besar dan terpisah cukup jauh, melebar di dasarnya rata-rata pointed dengan atau tanpa tuft', 'Besar dan berbentuk almond', 'Panjangan sedang dan berotot', '- Kecil dan tangkas\n- Bentuknya mulai dari bulat ke oval', 'Lebat, berkilau, dan berpegas', 'Panjangnya medium, melebar pada dasarnya, dan meruncing');
    ''');

    db.execute('''
        CREATE TABLE $tableCatStrength(
          ${CatStrengthFields.id} $idType,
          ${CatStrengthFields.catId} $integerType,
          ${CatStrengthFields.strength} $textType
        )
    ''');

    db.execute(
        '''INSERT INTO "$tableCatStrength" ("_id", "cat_id", "strength") VALUES ('1', '1', 'Mudah untuk disayangi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('2', '1', 'Senang bermain');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('3', '1', 'Pendiam');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('4', '1', 'Penyayang');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('5', '1', 'Cocok dengan anak-anak');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('6', '1', 'Mudah disisir');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('7', '2', 'Atraktif');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('8', '2', 'Dipuji');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('9', '2', 'Cocok dengan orang sibuk');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('10', '2', 'Menyenangkan');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('11', '2', 'Seimbang');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('12', '2', 'Pemburu yang baik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('13', '2', 'Bulunya mudah disisir');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('14', '3', 'Menarik karena unik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('15', '3', 'Kokoh dan sempurna');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('16', '3', 'Manis');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('17', '3', 'Mudah disayangi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('18', '3', 'Mudah beradaptasi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('19', '3', 'Tangkas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('20', '3', 'Cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('21', '4', 'Sangat cantik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('22', '4', 'Anggun');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('23', '4', 'Cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('24', '4', 'Setia');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('25', '4', 'Ramah');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('26', '4', 'Pendiam');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('27', '5', 'Lebih pendiam dari siamese');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('28', '5', 'Lincah dan vokal');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('29', '5', 'Mudah untuk disayangi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('30', '5', 'Cocok dengan anak-anak');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('31', '5', 'Sangat cantik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('32', '5', 'Sangat lemah gemulai');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('33', '6', 'Mempesona');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('34', '6', 'Cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('35', '6', 'Mudah beradaptasi dan mudah dilatih');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('36', '6', 'Cocok dengan anak-anak');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('37', '6', 'Pendiam');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('38', '6', 'Indah dan menarik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('39', '7', 'Berkepribadian yang menyenangkan');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('40', '7', 'Cocok dengan anak-anak');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('41', '7', 'Sangat cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('42', '7', 'Senang bermain-main');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('43', '7', 'Elegan');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('44', '8', 'Cantik');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('45', '8', 'Mudah untuk disayangi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('46', '8', 'Diagungkan');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('47', '8', 'Cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('48', '8', 'Cepat belajar');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('49', '8', 'Cocok untuk anak kecil');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('50', '9', 'Cerdas');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('51', '9', 'Pendiam');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('52', '9', 'Mudah untuk disayangi');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('53', '9', 'Kuat');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('54', '9', 'Lembut');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('55', '9', 'Penangkap tikus yang handal');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('56', '9', 'Cocok dengan anak-anak dan anjing');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('57', '10', 'Bulunya indah');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('58', '10', 'Tangkas dan suka bermain');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('59', '10', 'Ramah');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('60', '10', 'Pendiam');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('61', '10', 'Mudah disisir');''');
    db.execute(
        '''INSERT INTO "$tableCatStrength" ("${CatStrengthFields.id}", "${CatStrengthFields.catId}", "${CatStrengthFields.strength}") VALUES ('62', '10', 'Cocok dengan anak-anak');''');

    db.execute('''
        CREATE TABLE $tableCatWeakness(
          ${CatWeaknessFields.id} $idType,
          ${CatWeaknessFields.catId} $integerType,
          ${CatWeaknessFields.weakness} $textType
        )
    ''');

    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('1', '1', 'Sangat aktif');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('2', '1', 'Tidak suka diatur dan dibatasi');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('3', '1', 'Tidak cocok di rumah/apartemen');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('4', '2', 'Senang mengeong dengan bebas');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('5', '3', 'Belum ditemukan kekurangannya');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('6', '4', 'Kadang perlu disisir');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('7', '4', 'Bulu rontok pada musim gugur dan panas');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('8', '5', 'Tidak suka ditinggal sendirian');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('9', '5', 'Perlu disisir setiap hari');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('10', '6', 'Perlu disisir setiap hari');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('11', '6', 'Tidak suka dikurung');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('12', '7', 'Petualang sejati');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('13', '7', 'Butuh kehangatan');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('14', '7', 'Butuh teman');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('15', '8', 'Perlu disisir setiap hari');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('16', '8', 'Tidak suka dikurung');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('17', '9', 'Perlu disisir setiap hari');''');
    db.rawInsert(
        '''INSERT INTO "$tableCatWeakness" ("${CatWeaknessFields.id}", "${CatWeaknessFields.catId}", "${CatWeaknessFields.weakness}") VALUES ('18', '10', 'Sangat baik jika kebebasannya dibatasi karena sering dijadikan mangsa oleh kucing pencuri');''');
  }

  Future readDetailCat(int id) async {
    final db = await instance.database;

    final cat = await db.query(
      tableCat,
      columns: CatFields.values,
      where: '${CatFields.id} = ?',
      whereArgs: [id],
    );
    List<Cat> resultCat = cat.map((json) => Cat.fromJson(json)).toList();

    final catDetail = await db.query(
      tableCatDetail,
      columns: CatDetailFields.values,
      where: '${CatDetailFields.catId} = ?',
      whereArgs: [id],
    );
    List<CatDetail> resultCatDetail =
        catDetail.map((json) => CatDetail.fromJson(json)).toList();

    final catBody = await db.query(
      tableCatBody,
      columns: CatBodyFields.values,
      where: '${CatBodyFields.catId} = ?',
      whereArgs: [id],
    );
    List<CatBody> resultCatBody =
        catBody.map((json) => CatBody.fromJson(json)).toList();

    final catStrength = await db.query(
      tableCatStrength,
      columns: CatStrengthFields.values,
      where: '${CatStrengthFields.catId} = ?',
      whereArgs: [id],
    );
    List<CatStrength> resultCatStrength =
        catStrength.map((json) => CatStrength.fromJson(json)).toList();

    final catWeakness = await db.query(
      tableCatWeakness,
      columns: CatWeaknessFields.values,
      where: '${CatWeaknessFields.catId} = ?',
      whereArgs: [id],
    );
    List<CatWeakness> resultCatWeakness =
        catWeakness.map((json) => CatWeakness.fromJson(json)).toList();

    var result = {
      'cat': resultCat,
      'detail': resultCatDetail,
      'body': resultCatBody,
      'strength': resultCatStrength,
      'weakness': resultCatWeakness
    };

    return result;
  }

  Future<List<Cat>> readAllCat() async {
    final db = await instance.database;
    final data = await db.query(tableCat);

    List<Cat> result = data.map((json) => Cat.fromJson(json)).toList();
    return result;
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
