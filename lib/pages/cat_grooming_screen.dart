import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatGroomingScreen extends StatelessWidget {
  const CatGroomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Kebersihan Kucing',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 350,
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
                  'assets/images/bg_cat_grooming.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Memandikan\nKucing',
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
            height: 350,
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
                  'assets/images/bg_cutting_nails.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Memotong\nKuku',
                style: whiteTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
