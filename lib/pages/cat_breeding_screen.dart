import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatBreedingScreen extends StatelessWidget {
  const CatBreedingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Perkawinan Kucing',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          children: [
            Text(
              'Proses Perkawinan',
              style: blueTextStyle.copyWith(
                fontSize: 40,
                fontWeight: bold,
                height: 1.1,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              'Tahapan perkawinan kucing',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
                height: 1.1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StepCatBreedingItem(
              step: 1,
              desc: 'Kucing pejantan mencium-cium alat kelamin betina.',
              image: 'assets/images/cat_breeding_1.jpeg',
            ),
            const StepCatBreedingItem(
              step: 2,
              desc:
                  'Setelah itu, pejantan mulai "mendekap" tubuh betina dari bagian belakang sambil menggigit leher atasnya. Saat itulah terjadi penetrasi, yaitu bagian penis "membengkak" sehingga keduanya sulit dilepaskan.',
              image: 'assets/images/cat_breeding_2.jpeg',
            ),
            const StepCatBreedingItem(
              step: 3,
              desc:
                  'Proses perkawinan berlangsung sekitar 5-15 menit. Setelah itu, penis mengendur sehingga mudah dilepaskan. Perkawinan dikatakan berhasil jika sperma membuahi sel telur. Betina yang baru pertama kali dikawinkan ditandai dengan "jeritan" keras.',
              image: 'assets/images/cat_breeding_3.jpeg',
            ),
            const StepCatBreedingItem(
              step: 4,
              desc:
                  'Begitu selesai kawin, kucing betina dan pejantan membersihkan tubuh, juga menjilati alat kelaminnya.',
              image: 'assets/images/cat_breeding_4.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}

class StepCatBreedingItem extends StatelessWidget {
  final int step;
  final String desc, image;

  const StepCatBreedingItem({
    Key? key,
    required this.step,
    required this.desc,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                top: 15,
              ),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  '$step',
                  style: blueTextStyle.copyWith(fontSize: 25, fontWeight: bold),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            '$step. $desc',
            style: blackTextStyle.copyWith(
              fontSize: 23,
              fontWeight: bold,
              // height: 1.2,
            ),
          ),
        )
      ],
    );
  }
}
