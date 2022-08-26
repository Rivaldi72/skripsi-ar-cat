import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatRaisingScreen extends StatelessWidget {
  const CatRaisingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Memelihara Kucing',
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
                          'Memelihara Kucing',
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
                    'Sungguh menyenangkan menerima kehadiran kucing di rumah. Memelihara kucing penuh dengan menyenangkan tidak akan melelahkan, justru membuat rileks. Namun, diperlukan tata cara, waktu yang tepat dalam memelihara kucing.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Agar kucing tidak merasa tersakiti dan pemilik serta seluruh penghuni rumah juga tidak terluka, memelihara kucing perlu dilakukan secara telaten. Jika kegiatan tersebut dilakukan setiap hari, kucing pasti akan terbiasa. Tidak perlu kuatir jika di awal-awal terjadi penolakan dari si kucing karena itu adalah hal biasa. Berikut ini akan dijelaskan hal-hal yang bisa dilakukan dalam mendekatkan diri dengan kucing kesayangan, mulai dari menciptakan lingkungan aman di rumah, bersosialisasi, memberinya nama, hingga bermain dengan kucing.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'A. Menciptakan Lingkunga Aman Di Rumah',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebelum kucing tiba di rumah, pastikan lingkungan rumah dalam keadaan aman. Kucing adalah hewan yang selalu ingin tahu. Oleh karena itu, perhatikan semua kondisi sudah aman terkendali sehingga tidak ada yang bisa membahayakan kucing, terutama kitten. Berikut beberapa hal tersebut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Jendela dan Pintu',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing biasanya butuh waktu sekitar seminggu untuk dapat memahami seisi rumah. Biasanya kucing mengikuti pemiliknya jika pertama kali ditinggal pergi. Jika hendak bepergian dan meninggalkan kucing sendirian di rumah, sebaiknya pastikan semua jendela dan pintu tertutup dengan rapat. Jika memungkinkan, buatkan pintu kecil seukuran tubuh kucing agar kucing mudah jika hendak keluar rumah. Hal ini penting terutama untuk kucing yang tidak suka dikurung sendirian di rumah.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '2. Listrik, Stop Kontak, dan Kabel',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jauhkan kucing dari daerah listrik dan kabel yang bisa membahayakannya. Salah satu penyebabnya adalah rasa ingin tahu yang tinggi, kucing bisa saja menganggap kabel listrik seperti tali mainan. Untuk meminimalisasi bahaya tersengat listrik, semua kabel sebaiknya ditutup dengan penutup kabel. Hal ini penting diperhatikan agar kucing terhindar dari bahaya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '3. Bahan yang Beracun',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing selalu ingin menjelajah dan menginvestigasi apa pun yang ada di sekitarnya. Padahal, rumah selalu diisi dengan berbagai bahan, baik yang sifatnya menyehatkan maupun yang beracun. Bahan yang beracun bisa saja membunuh kucing. Beberapa kandungan bahan aktif yang beracun untuk kucing, yaitu asetaminophen/parasetamol, sejenis asam (acid), alkohol, antifreeze, aspirin atau ibuprofen, klorin, bahan pembersih, pupuk, petrol dan minyak diesel, insektisida, bensin, cat, obat-obatan, bahan pelarut (tinner, remover karat, dan remover bercak) serta racun tikus. Oleh karena itu, tetap waspada dan jauhkan kucing dari bahan-bahan tersebut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing yang terlanjur memakannya secara tidak sengaja akan menimbulkan reaksi keracunan, gangguan pernapasan, hingga kematian. Banyak juga racun yang menyebabkan kucing diare/mencret. Jika terjadi keracunan, langkah yang dapat dilakukan adalah segera beri 2—3 sendok makan sirup ipecac. Jika tidak ada, campurkan air dengan garam yang banyak sehingga menjadi salted water. Jika sudah memuntahkan racunnya, berikan air minum atau susu dalam jumlah yang banyak.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '4. Tanaman yang Mematikan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Setiap rumah biasanya memiliki berbagai jenis tanaman. Namun, ada beberapa tanaman bersifat racun bagi kucing, seperti ivy, philodendron, azalea, tanaman kacang-kacangan, dieffenbachia, hydrangea, lily, jamur, oleander, poinsettia, daun kentang, tembakau, daun tomat, kenari, dan pohon cemara. Untuk menghindari kucing memakannya, tanaman beracun ini sebaiknya diletakkan di luar rumah dan dijauhkan dari tempat yang bisa dijangkau oleh kucing.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'B. Menyiapkan Saranna',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebelum mulai memelihara kucing, yakinkan segala persiapan sarana untuk kebutuhan kucing telah tersedia. Persiapan tersebut berguna untuk menunjang kehidupan kucing ke lingkungan baru sehingga tidak mengalami stres.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Rumput/Dedaunan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebaiknya sediakan rerumputan atau dedaunan segar untuk kucing. Jika tidak menanamnya, rumput/dedaunan dapat juga dibeli di pet shop. Kucing biasanya memakan dedaunan jika merasa pencernaannya kurang begitu baik. Kucing memakan daun/rerumputan sesuai instingnya. Tujuannya untuk mengeluarkan hairball di perutnya. Oleh karena itu, pemilik tidak perlu panik jika melihat kucing memakan rumput.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '2. Tanda Pengenal',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing sebaiknya menggunakan tanda pengenal (collar) dengan identitas meskipun selalu berada di dalam rumah. Hal ini karena kucing bisa saja diam-diam pergi ke luar rumah tanpa sepengetahuan pemiliknya. Dengan adanya tanda pengenal, mudah menemukan kucing yang tersesat di luar. Oleh karena itu, collar dan ID menjadi penting terutama jika kondisi seperti ini terjadi.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '3. Kotak P3K',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing bisa saja sakit sehingga mempersiapkan sarana pengobatan yang dapat dibawa alias praktis sangatlah penting. Pemilik kucing harus selalu berjaga-jaga. Jika tiba waktunya kucing sakit, perlengkapan dalam kotak P3K ini dapat diberikan sebagai pertolongan pertama. Adapun beberapa perlengkapan yang sebaiknya dimasukkan dalam kotak P3K, yaitu isolatip, scrub antibakteri, kapas, kain kasa, mineral oil, kasa, handuk kecil, termometer, alkohol, selimut kecil, senter kecil, sirup apecac, dan penjepit.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '4. Keranjang Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Setiap pemilik kucing harus memiliki cat carrier atau keranjang untuk membawa kucing. Tujuannya untuk memudahkan ketika memindahmindahkannya dari satu tempat ke tempat lain. Keranjang dapat terbuat dari rotan, besi, alumunium, atau plastik. Hal yang penting adalah ukurannya tidak terlalu sempit agar kucing tetap merasa nyaman di dalamnya. Lengkapi juga keranjang dengan handuk, kain, atau selimut agar kucing tetap hangat dan nyaman.',
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
