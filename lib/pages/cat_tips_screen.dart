import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatTipsScreen extends StatelessWidget {
  const CatTipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Tips Tentang Kucing',
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
                  'assets/images/bg_buy_cat.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Memilih dan\nMembeli Kucing',
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
                  'assets/images/bg_pet_cat.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Memelihara\nKucing',
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
                  'assets/images/bg_cat_care.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Merawat\nKucing',
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
