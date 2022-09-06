import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_ordered_list.dart';

class CatCuttingNailsScreen extends StatelessWidget {
  const CatCuttingNailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Memotong Kuku',
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
                          'Memotong Kuku',
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
                    'Memotong Kuku',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kuku yang terlalu panjang akan menyulitkan kucing berjalan. Sementara itu, memotong kuku terlalu pendek dapat melukai kucing. Jika kuku dipotong habis, secara alami kucing tidak dapat melompat, mencakar, bahkan tidak dapat bertahan hidup karena akan kalah oleh kucing lain. Untuk kucing ras, hal tersebut tidak menjadi masalah karena kucing ras tidak liar sehingga pemotongan kuku dengan rutin perlu dilakukan. Selain itu, kuku yang dipotong merupakan syarat dalam mengikuti kontes kucing. Namun, memotong kuku sebaiknya dengan terlebih dahulu memahami anatomi kuku, menggunakan gunting kuku, hingga cara melakukannya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '1. Anatomi Kuku Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing mempunyai kuku yang unik. Tidak seperti anjing, kuku kucing dapat ditarik ke luar dan ke dalam. Dalam keadaan normal, kuku kucing tertarik ke dalam dan tersembunyi. Jika kucing sedang marah atau mencakar, barulah kukunya dikeluarkan.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kucing mempunyai jaringan daging di bawah kuku yang disebut quick, seperti manusia, hanya letaknya sedikit berbeda. Jaringan ini berwarna merah muda. Berbeda dengan warna kuku yang berwarna putih transparan. Letak dan batas jaringan daging ini perlu diperhatikan agar tidak terpotong saat pemotongan kuku kucing. Jika terpotong, akan muncul darah dari jaringan yang terluka dan kucing akan merasa kesakitan.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/nail_anatomy.jpeg'),
                  const SizedBox(height: 10),
                  Text(
                    '2. Alat dan Bahan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Gunting kuku adalah alat utama yang diperlukan jika ingin memotong kuku. Banyak model dan jenis gunting kuku khusus hewan kesayangan yang dijual di pet shop. Gunting kuku yang sering dipergunakan sehari-hari untuk memotong kuku orang juga bisa digunakan. Pastikan gunting kuku yang akan digunakan benar-benar tajam. Jika kurang tajam, bentuk potongan kuku kucing kurang bagus, bahkan kadangkadang kukunya bisa pecah.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Bahan yang disediakan berupa serbuk perak nitrat atau PK (baca: peka)/ kalium permanganat/KMnO, Serbuk PK berwarna merah-ungu. Serbuk PK dan perak nitrat ini berguna untuk mempercepat berhentinya perdarahan jika daerah quick terpotong. Serbukserbuk tersebut ditaburkan/ditempelkan pada bagian kuku yang terluka. Tujuannya agar perdarahan segera berhenti. Jika tidak tersedia, perdarahan pada kuku dapat dikurangi dengan cara menekan daerah sekitar kuku. Normalnya perdarahan akan berhenti kurang lebih dalam waktu 5 menit.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '3. Cara Memegang Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Tidak ada patokan yang pasti cara memegang kucing pada saat memotong kukunya. Hal yang terpenting adalah kucing merasa nyaman dan dapat meminimalkan pergerakan kucing. Sebaiknya posisi tangan saat memegang kaki kucing agak jauh dari jangkauan mulut kucing. Tujuannya untuk menghindar dari reaksi kucing seperti menggigit atau mencakar. Memegang kucing bisa dengan bantuan orang lain agar kucing lebih mudah dikendalikan.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '4. Cara Memotong Kuku',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Tahapan memotong kuku adalah sebagai berikut.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const OrderedList(
                    point: 'a.',
                    content:
                        'Tekan telapak kaki kucing dengan lembut dan mantap agar kukunya muncul.',
                  ),
                  const OrderedList(
                    point: 'b.',
                    content:
                        'Perhatikan batas kuku dengan daging di bawahnya (quick).',
                  ),
                  const OrderedList(
                    point: 'c.',
                    content:
                        'Potong kuku dengan jarak sekitar 1 mm dari quick. Jika terlalu dekat, akan terasa sakit. Lebih baik memotong kuku sedikit-sedikit, tetapi lebih sering dilakukan (1 atau 2 minggu sekali). Hal tersebut lebih baik daripada jarang memotong kuku, tetapi saat dipotong pendek sekali hingga ke dekat quick.',
                  ),
                  const OrderedList(
                    point: 'd.',
                    content:
                        'Perhatikan posisi alat pemotong dengan kuku. Masing-masing alat pemotong berbeda cara penggunaannya. Prinsipnya kuku dipotong dari bawah ke atas (vertikal). Jika dipotong dari samping, kemungkinan kuku pecah akan semakin besar.',
                  ),
                  const OrderedList(
                    point: 'e.',
                    content:
                        'Potong kuku satu per satu dengan hati-hati. Normalnya kaki depan mempunyai lima kuku dan empat kuku pada kaki belakang. Beberapa kucing mempunyai jumlah jari yang berlebih yang disebut polidactyl. Kucing polidactyl bisa mempunyai enam jari pada kaki depan.',
                  ),
                  const OrderedList(
                    point: 'f.',
                    content:
                        'Jangan lupa memotong kuku jempol. Kukunya terletak lebih dekat dengan pergelangan. Kuku ini jarang dipakai menggaruk sehingga biasanya lebih panjang dibandingkan dengan kuku lainnya. Kuku jempol yang jarang dipotong dapat tumbuh melingkar dan menusuk kaki.',
                  ),
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
