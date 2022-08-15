import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_menu_list_item.dart';
import 'package:skripsi_ar_cat/widgets/custom_navigation_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 90,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.4),
                blurRadius: 30,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomBottomNavigationItem(
                icon: 'assets/images/icon_home.png',
                isSelected: true,
                title: 'Home',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/scan-ar');
                },
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/icon_scan.png',
                      ),
                    ),
                  ),
                ),
              ),
              const CustomBottomNavigationItem(
                icon: 'assets/images/icon_about.png',
                title: 'About',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: kBlackColor.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/bg_home.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AR Cat Apps',
                          style: whiteMeowTextStyle.copyWith(
                            fontSize: 44,
                          ),
                        ),
                        Text(
                          'Get to know more\nabout Cats',
                          style: whiteTextStyle.copyWith(
                            fontSize: 17,
                            height: 0.9,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 20, bottom: 120),
                  children: [
                    CustomListMenuItem(
                      icon: 'assets/images/icon_cat_type.png',
                      title: 'Jenis-Jenis Kucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-list');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_cat_breeding.png',
                      title: 'Perkawinan Kucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-list');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_tips.png',
                      title: 'Tips Tentang Kucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-tips');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_cat_health.png',
                      title: 'Kesehatan\nKucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-health');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_cat_hygiene.png',
                      title: 'Kebersihan\nKucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-grooming');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_fun_fact.png',
                      title: 'Fakta Menarik Kucing',
                      action: () {
                        Navigator.pushNamed(context, '/cat-list');
                      },
                    ),
                    CustomListMenuItem(
                      icon: 'assets/images/icon_guideline.png',
                      title: 'Panduan Penggunaan',
                      action: () {
                        Navigator.pushNamed(context, '/cat-list');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
          customButtonNavigation()
        ],
      ),
    );
  }
}