import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatBloodTypeScreen extends StatelessWidget {
  const CatBloodTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Golongan Darah Kucing',
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
                      'assets/images/bg_cat_blood_type.png',
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
                          'Golongan Darah',
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
                    'A. Mengetahui Golongan Darah Kucing',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Seorang breeder sebaiknya mengetahui golongan darah kucing. Seperti juga manusia, ternyata kucing pun memiliki beberapa macam golongan darah. Ada tiga macam golongan darah yang terdapat pada kucing, yaitu A, B, dan AB. Semua kucing ras siam, burmese, tonkinese, american shorthair, dan oriental shorthair sejauh ini diketahui mempunyai golongan darah A. Adapun sekitar 50% kucing ras berdarah murni, termasuk ras persia, devon rex, sphynx, abyssinian, cornish rex, exotic shorthair, birman, dan somali mempunyai golongan darah B.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Golongan darah A pada kucing bersifat lebih dominan dari golongan darah B. Jika kucing jantan dan betina mempunyai golongan darah yang berbeda (A dan B atau AB), kemungkinan besar anak kucing yang lahir mempunyai golongan darah A.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Breeder sebaiknya memiliki induk kucing dengan golongan darah A. Perkawinan kucing-kucing dengan golongan darah yang berbeda mempunyai risiko kematian anak kucing beberapa hari setelah lahir. Oleh karena itu, kucing betina bergolongan darah B hanya bisa dikawinkan dengan pejantan yang bergolongan darah B juga. Berikut alasannya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jantan (A) X Betina (A) --> aman',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Perkawinan kucing jantan dengan golongan darah A dengan betina golongan darah A akan menghasilkan anak kucing dengan golongan darah yang sama. Hal ini tidak berbahaya. Anak kucing dapat selamat dan hidup dengan normal.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jantan (B) X Betina (A) --> aman',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Perkawinan kucing jantan golongan darah B dengan betina golongan darah A akan menghasilkan anak kucing dengan golongan darah A (karena A lebih dominan dari B). Hal ini tidak berbahaya, anak kucing dapat selamat dan hidup dengan normal.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jantan (B) X Betina (B) --> aman',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Perkawinan kucing jantan golongan darah B dengan betina golongan darah B, akan menghasilkan anak kucing dengan golongan darah B. Hal ini tidak berbahaya, anak kucing dapat selamat dan hidup dengan normal.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jantan (A) X Betina (B) --> Fading Kitten Syndrome',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Perkawinan kucing jantan golongan darah A dengan betina golongan darah B akan menghasilkan anak kucing dengan golongan darah A (karena A lebih dominan dari B). Hal ini berbahaya karena golongan darah ibu berbeda dengan golongan darah anak.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Dalam air susu yang dihasilkan oleh induk terdapat antibodi terhadap golongan darah yang berbeda. Jika golongan darah induk B dan anak A, susu dari induk akan menghancurkan sel-sel darah anak kucing karena golongan darahnya berbeda. Susu dari induk bukannya menjadi energi dan makanan bagi anak, malah menjadi pembunuh bagi anak kucing. Anak kucing tersebut akan mati dalam beberapa hari setelah disusui induknya. Inilah yang disebut Fading Kitten Syndrome.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Fading Kitten Syndrome adalah suatu kejadian matinya anak kucing dari beberapa hari (hingga 7 hari) setelah lahir akibat adanya perbedaan golongan darah dengan induknya. Jadi, jika beberapa kali kawin dengan jantan yang sama, anaknya selalu mati dalam beberapa hari setelah melahirkan. Ada kemungkinan kucing betina memiliki golongan darah B. Cobalah cari pejantan lain, lebih baik lagi mencari pejantan yang memang diketahui bergolongan darah B.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Reaksi antibodi yang terdapat pada susu tidak terjadi pada kucing dengan golongan darah AB. Jika induk bergolongan darah A atau B dan anak tipe AB, Fading Kitten Syndrome tidak terjadi. Begitu juga sebaliknya bila induk bergolongan AB dan anak A atau B, anakanak tersebut dapat hidup normal, tidak terganggu oleh susu induknya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
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
