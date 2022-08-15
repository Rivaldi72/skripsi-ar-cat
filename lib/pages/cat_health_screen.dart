import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatHealthScreen extends StatelessWidget {
  const CatHealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Kesehatan Kucing',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 250,
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/bg_cat_vaccination.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Vaksinasi\nKucing',
                style: whiteTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 250,
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/bg_cat_desease.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Jenis-Jenis\nPenyakit',
                style: whiteTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 250,
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/bg_cat_blood_type.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Golongan\nDarah',
                style: whiteTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
