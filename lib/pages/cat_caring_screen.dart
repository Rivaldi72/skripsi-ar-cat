import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_ordered_list.dart';

class CatCaringScreen extends StatelessWidget {
  const CatCaringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Merawat Kucing',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_cat_choose.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: Text(
                          'Merawat Kucing',
                          textAlign: TextAlign.center,
                          style: whiteTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perawatan adalah hal pokok dan wajib dilakukan jika memelihara kucing. Perawatan bulu dan organ lainnya sangat penting karena terkait langsung dengan kesehatan si kucing. Jika kucing bersih, secara otomatis penyakit akan menjauh. Demikian juga dengan kutu dan jamur. Sebenarnya ada seribu satu cara, murah, dan efisien dalam merawat kucing. Jadi, jangan menyerah dan berputus asa dahulu. Hal yang penting adalah melakukannya dengan baik dan rutin.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'A. Memandikan Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Hal lain yang penting dalam menjaga bulu kucing adalah memandikannya. Memandikan kucing, terutama kucing kampung/lokal, memang sulit karena kucing takut pada air. Jika ini adalah pertama kali memandikannya, jangan heran kucing akan meronta-ronta dan melukai. Oleh karena itu, waspadai dengan menggunakan sarung tangan. Lain halnya dengan kucing ras yang mudah dikontrol. Jika dimandikan,Hal lain yang penting dalam menjaga bulu kucing adalah memandikannya. Memandikan kucing, terutama kucing kampung/lokal, memang sulit karena kucing takut pada air. Jika ini adalah pertama kali memandikannya, jangan heran kucing akan meronta-ronta dan melukai. Oleh karena itu, waspadai dengan menggunakan sarung tangan. Lain halnya dengan kucing ras yang mudah dikontrol. Jika dimandikan, kucing tidak sampai meronta-ronta dan hanya perlu sedikit adaptasi saja. Setelah terbiasa, proses pemandian kucing ras akan berjalan lancar.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mandi secara rutin biasanya dilakukan seminggu sekali. Sementara itu, frekuensi mandi menjelang kontes ditambah menjadi dua kali dalam seminggu. Mandi dan penyisiran bulu secara teratur dapat menghilangkan kutu, ketombe, dan membuang bulu-bulu mati yang sudah waktunya rontok.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Beberapa hal yang perlu diperhatikan saat memandikan kucing adalah sebagai berikut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Persiapan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebelum kucing mandi, ada beberapa yang harus dipersiapkan. Tujuannya untuk memperlancar kegiatan mandi. Pertama, siapkan tempat mandi atau bak dan air dingin dan air hangat. Air hangat lebih disarankan karena suhu badan kucing cenderung hangat (38—39° C) sehingga perbedaan suhunya tidak terlalu mengagetkan. Selanjutnya, siapkan bahan dan peralatan lainnya, seperti handuk, sikat gigi, gunting kuku, gunting untuk merapikan bulu (gunting tumpul), pengering rambut (hairdryer), sisir kucing tipe sikat (brush comb), dan sampo untuk tipe/kondisi tertentu.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '2. Cara Memandikan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebelum dimandikan, kucing berbulu panjang sebaiknya disisir terlebih dahulu. Tujuannya agar terhindar dari bulu yang kusut dan gimbal. Bulu gimbal jangan digunting, tetapi diurai dengan tangan ataupun alat pengurai. Selanjutnya, kuku kucing dipotong agar terhindar dari cakaran saat memandikan.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Untuk mandi jamur, periksa terlebih dahulu bagian-bagian yang sakit di seluruh tubuh. Jamur biasanya menyerang di bagian dagu, ketiak, lipatan paha, telapak kaki, ekor, dan pangkal ekor. Tungau scabies paling sering menyerang di bagian telinga luar dan ujung-ujung telinga bagian dalam. Sementara itu, kutu/pinjal sering menyerang bagian atas kepala, dagu, ketiak, dan lipatan paha. Ingat-ingatlah pada bagian yang sakit tersebut karena bagian tersebut harus terkena sampo dan harus disikat pada saat dimandikan. Adapun sampo yang digunakan, yaitu sampo jamur.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Berikut adalah tahapan memandikan kucing.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'a.',
                    content: 'Ambil kucing dari kandang dengan lembut.',
                  ),
                  const OrderedList(
                    point: 'b.',
                    content:
                        'Basahi seluruh tubuh kucing dengan air. Pastikan air membasahi seluruh bulu sampai ke kulit.',
                  ),
                  const OrderedList(
                    point: 'c.',
                    content:
                        'Tuangkan sampo pada bulu yang basah, lalu ratakan dengan cara memijat lembut, mulai dari belakang telinga dan bawah dagu, lalu menyebar ke punggung, perut, kaki, dan ekor. Gunakan sampo sesuai kondisi bulu. Jika sangat kotor, berlemak, dan berdaki, sebaiknya gunakan sampo degreaser/peluruh lemak. Larutkan sampo ke dalam air hangat dengan perbandingan 1: 8.',
                  ),
                  const OrderedList(
                    point: 'd.',
                    content:
                        'Setelah sampo merata, sikat dan bersihkan bagian tubuh yang lain seperti kaki dan muka dengan sikat gigi. Selanjutnya, bilas seluruh tubuh kucing dengan air hingga bersih. Periksa kembali bagian-bagian yang sakit.',
                  ),
                  const OrderedList(
                    point: 'e.',
                    content:
                        'Untuk bagian kepala, berikan sampo bayi atau sampo yang tidak pedih di mata agar bulu wajah bersih dan mengembang.',
                  ),
                  const OrderedList(
                    point: 'f.',
                    content:
                        'Khusus untuk kucing berbulu warna tertentu digunakan sampo warna. Misalnya, sampo blue/super white untuk kucing putih. Tujuannya agar warna bulunya semakin muncul.',
                  ),
                  const OrderedList(
                    point: 'g.',
                    content:
                        'Ulangi penggunaan sampo 2–3 kali, kemudian bilas sampai bersih.',
                  ),
                  const OrderedList(
                    point: 'h.',
                    content:
                        'Tambahkan sampo protein jika bulu cenderung kering agar bulu tidak tampak kering atau mudah patah, lalu bilas hingga bersih.',
                  ),
                  const OrderedList(
                    point: 'i.',
                    content:
                        'Setelah mandi selesai, keringkan dengan kain cotton atau handuk ataupun bahan yang menyerap air dengan baik.',
                  ),
                  const OrderedList(
                    point: 'j.',
                    content:
                        'Selanjutnya, keringkan kucing dengan pengering rambut (hairdryer) atau blower sambil disisir. Lakukan pengeringan mulai dari bagian bawah perut, kaki, dan tangan, lalu menyebar ke ekor, punggung, dan bagian dagu sekitar wajah. Hindari penyemprotan langsung ke bagian telinga/ wajah kucing. Hal tersebut akan menyebabkan kucing lari dan menghindar. Pastikan bulu dan seluruh tubuh kucing kering sampai ke kulit, terutama di daerah dengan bulu tebal dan yang agak sulit seperti daerah perut, kaki belakang, daerah di antara kaki belakang, pangkal ekor, dan telapak kaki. Pengeringan yang tidak sempurna akan menciptakan lembap sehingga dapat memudahkan tumbuhnya jamur.',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_cat_buying.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: Text(
                          'Merawat Kucing',
                          textAlign: TextAlign.center,
                          style: whiteTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'B. Merawat Bulu Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Secara normal, kucing berganti bulu dua kali setahun. Namun, pergantian bulu sering diperpanjang karena buruknya makanan atau adanya penyakit. Selama masa pergantian bulu, seekor kucing yang tidak dirawat akan kehilangan bulunya. Selain itu, bulu menjadi kusut membentuk gumpalan, seperti bola keras karena tersangkut makanan atau kotoran. Kusutnya bulu ini dapat menyebabkan penyakit kulit yang cukup serius. Secara alamiah, mulut kucing merupakan alat untuk membersihkan bulu dengan cara menjilatinya. Namun, tetap saja kucing memerlukan bantuan, terutama untuk menyisir bulunya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
