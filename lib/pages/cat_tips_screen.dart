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
          CustomTipsCardView(
            title: 'Memilih\ndan Membeli Kucing',
            image: 'assets/images/bg_buy_cat.png',
            action: () {
              Navigator.pushNamed(context, '/cat-buying');
            },
          ),
          CustomTipsCardView(
            title: 'Memelihara\nKucing',
            image: 'assets/images/bg_pet_cat.png',
            action: () {
              Navigator.pushNamed(context, '/cat-buying');
            },
          ),
          CustomTipsCardView(
            title: 'Merawat\nKucing',
            image: 'assets/images/bg_cat_care.png',
            action: () {
              Navigator.pushNamed(context, '/cat-buying');
            },
          ),
        ],
      ),
    );
  }
}

class CustomTipsCardView extends StatelessWidget {
  final String title, image;
  final Function()? action;
  const CustomTipsCardView({
    Key? key,
    required this.title,
    required this.image,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
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
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 28,
              fontWeight: bold,
              height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
