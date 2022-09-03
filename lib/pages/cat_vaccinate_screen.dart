import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_ordered_list.dart';

class CatVaccinateScreen extends StatelessWidget {
  const CatVaccinateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Vaksinasi Kucing',
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
                      'assets/images/bg_cat_vaccination.png',
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
                          'Vaksinasi Kucing',
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
                    'A. Memberikan Vaksinasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Seperti halnya manusia, kucing harus dilindungi dengan vaksinasi agar dapat melawan segala penyakit yang mungkin datang menyerangnya. Vaksinasi merupakan jalan terbaik yang diyakini dapat melawan virus dan penyakit akut lainnya. Oleh karena itu, vaksinasi dianggap penting.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Tentang Vaksinasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Vaksinasi merupakan suntikan yang diberikan kepada kucing untuk mendeaktivasikan virus, bahkan membunuh penyebab penyakit, terutama virus. Vaksin penting sebagai sistem imun bagi tubuh kucing. Vaksin akan merangsang terbentuknya antibodi yang didesain untuk menghancurkan sesuatu yang masuk ke dalam tubuh yang dikenali dan diperkirakan membahayakan. Tujuannya agar kucing tidak mengalami infeksi.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ada begitu banyak jenis penyakit yang mungkin dapat menyerang kucing. Bahkan, ada penyakit-penyakit tertentu yang mampu membunuh kucing tiap tahunnya, terutama kucing yang dibiarkan keluar rumah sehingga tidak dapat dikontrol setiap saat. Satu-satunya cara yang mutlak dilakukan adalah memberi suntikan vaksin. Vaksin efektif dalam menekan masuknya sejumlah penyakit, terutama virus. Jangan tunda lagi untuk segera melengkapi kucing kesayangan dengan vaksin.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '2. Macam-macam Vaksinasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ada dua macam vaksinasi, yaitu live-virus dan non-infectious. Live-virus merupakan patogen yang dimodifikasi untuk mencegah vaksin yang menyebabkan penyakit. Bagian dari life virus, yaitu MLV (modified live virus). MLV harus direplikasi pada kucing setelah terinfeksi terlebih dahulu. Adapun jenis lain dari MLV yang tersedia di beberapa negara, yaitu vaksin intranasal (IN). IN didesain untuk bagian yang terserang secara lokal (diteteskan ke mata atau hidung). IN dapat menghasilkan sistem imun yang baik dengan perlindungan yang lebih cepat. IN bermanfaat untuk mencegah herpesvirus atau calicivirus yang letaknya di bagian mata dan hidung.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Vaksin non-infectious disebut juga killed virus (KV). Penggunaannya kadang dipercaya lebih aman dibandingkan vaksin MLV. Hal ini karena vaksin MLV tidak mampu direplikasikan pada kucing dan tidak dapat mencegah penyakit. Selain itu, respon imun yang dihasilkan oleh KV lebih rendah dan jangka waktunya cukup singkat. Vaksin KV diperlukan hanya sebagai adjuvant atau sebuah substansi yang dapat membantu meningkatkan respon imun.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '3. Penerapan Vaksinasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ada tiga alasan pemberian vaksin penting, yaitu sebagai berikut:',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'a.',
                    content:
                        'Sebagai konsekuensi dari akibat penyakit (misalnya FPV).',
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'b.',
                    content:
                        'Penyakit sering menyerang dan menular (misalnya FHV-1 dan FCV).',
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'c.',
                    content:
                        'Infeksinya dapat berakibat buruk pada manusia (misalnya rabies).',
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/img_vaccinete1.png'),
                  const SizedBox(height: 10),
                  Text(
                    'Kitten baru dapat divaksin umur 10 minggu. Sebelum umur tersebut, kitten hanya memiliki kemampuan melawan virus secara pasif. Kitten harus berjuang sendiri selama 10 minggu jika induk menularkan virus. Penularan virus melalui sang induk dapat terjadi saat di dalam kandungan. Oleh karena itu, masa kritis kitten setelah dilahirkan dari perut induknya adalah 12–18 jam setelah lahir. Pada masa tersebut kitten mulai memproduksi antibodinya sendiri. Berikut beberapa persisten antibodi kitten yang diturunkan dari induknya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/img_vaccinete2.png'),
                  const SizedBox(height: 10),
                  Text(
                    'Agar tetap sehat, kucing harus divaksin secara teratur dan sesuai jadwal. Adapun jadwal vaksinasi kucing, dapat dilihat pada Tabel berikut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/img_vaccinete3.png'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
