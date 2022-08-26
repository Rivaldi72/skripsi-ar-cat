import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatBuyingScreen extends StatelessWidget {
  const CatBuyingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Memilih & Membeli Kucing',
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
                          'Memilih Kucing',
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
                    'A. Memilih dari Banyak Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Memilih kucing mudah, tetapi juga membingungkan. Adapun jenis kucing yang dipilih sebaiknya perhatikan ciri-ciri kucing yang sehat da baik seperti ini:',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'a.',
                    content:
                        'Kucing sehat terbukti dengan hasil pemeriksaan dokter hewan atau periksa dan amati sendiri. Belilah kucing dengan surat/sertifikat silsilah yang jelas khususnya untuk kucing ras dan campuran.',
                  ),
                  const OrderedList(
                    point: 'b.',
                    content:
                        'Kucing secara fisik terlihat montok, ototnya kuat, dan bersih. Periksalah terutama bagian anus, telinga, bulu, dan mulutnya.',
                  ),
                  const OrderedList(
                    point: 'c.',
                    content:
                        'Kucing responsif saat diajak bermain. Hal tersebut merupakan pertanda kucing memang sehat secara mental.',
                  ),
                  const OrderedList(
                    point: 'd.',
                    content:
                        'Pastikan benar-benar menyukainya pada pandangan pertama. Biasanya kesan pertama sangat berarti.',
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
                          'Membeli Kucing',
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
                    'B. Membeli Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Setelah mengetahui kucing yang akan dibeli dan yakin akan memelihara kucing, tahap selanjutnya adalah membeli kucing. Ada begitu banyak tempat yang menyediakan kucing untuk dijual, seperti pembiak, pet shop, rumah sakit hewan, atau organisasi pecinta kucing.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Mencari Informasi Lokasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sebaiknya kumpulkan terlebih dahulu informasi yang sebanyak-banyaknya tempat paling baik untuk bisa membeli kucing. Informasi tempat tersebut bisa diperoleh melalui berikut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const OrderedList(
                    point: 'a.',
                    content:
                        'Websites. Penjelajahan informasi melalui internet dan websites juga cukup baik dan efektif karena banyak orang merekomendasikan tempat membeli kucing, pesan dan kesan saat membeli, puas atau tidak, dan sesuai atau tidak.',
                  ),
                  const OrderedList(
                    point: 'b.',
                    content:
                        'Majalah. Majalah hobiis biasanya memberik informasi mengenai breeder yang akurat dan terdaftar sehingga dapat dipertanggung jawabkan.',
                  ),
                  const OrderedList(
                    point: 'c.',
                    content:
                        'Organisasi pecinta kucing. Kucing dapat diperoleh melalui organisasi pecinta kucing dalam maupun luar negeri.',
                  ),
                  const OrderedList(
                    point: 'd.',
                    content:
                        'Kontes atau cat show. Jika menghadiri kontes kucing, cobalah memperhatikan kucing yang disukai. Ajang ini biasayanya juga dapat menemukan penjual kucing karena biasanya para hobiis juga ada yang menjual kitten atau kucingnya.',
                  ),
                  const OrderedList(
                    point: 'e.',
                    content:
                        'Dokter hewan. Banyak dokter hewan juga menyediakan kucing dan kitten yang memang tujuannya untuk dijual. Selain ahli menangani kucing, hewan yang dijual dokter hewan dapat dipastikan dalam keadaan sehat dan berkualitas.',
                  ),
                  const OrderedList(
                    point: 'f.',
                    content:
                        'Iklan. Mencari kucing kesayangan melalui iklan, baik TV, radio, koran, dan buku, juga dapat dilakukan. Selain informasi yang diperoleh cukup mewakili, alamat dan contact person juga bisa ditemukan. Dengan demikian, pembeli dapat berkunjung dan melihat langsung kucing yang ingin dibeli',
                  ),
                  const OrderedList(
                    point: 'g.',
                    content:
                        'Breeder. Breeder berbeda dengan dokter hewan. Breeder lebih kepada hobiis yang memang sangat tertarik dengan temuan baru hasil persilangan antar berbagai ras yang ada. Breeder memiliki pemahaman dan pengetahuan yang juga dapat diandalkan karena pengalaman nya dalam mengawinkan berbagai ras kucing. Breeder biasanya juga mengetahui tren ras kucing. Oleh karena itu, tidak ada salahnya mencari informasi melalui breeder.',
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

class OrderedList extends StatelessWidget {
  final String point, content;
  const OrderedList({
    Key? key,
    required this.point,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          point,
          style: blackTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            content,
            style: blackTextStyle.copyWith(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
