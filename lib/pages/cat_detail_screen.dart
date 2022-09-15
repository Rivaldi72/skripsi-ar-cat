import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatDetailScreen extends StatelessWidget {
  const CatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Detail Kucing',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 290,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/cat_test.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        // make sure we apply clip it properly
                        borderRadius: BorderRadius.circular(18),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            child: Text(
                              'Kucing Anggora',
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
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: blackTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: blackTextStyle.copyWith(
                      fontSize: 15,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ciri Fisik',
              style: blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
            ),
            const SizedBox(height: 10),
            CustomTableCharacteristic(
              title: 'Kepala',
              value: Text(
                '- TestetsetsTestetsetsTestetsetsTestetsetsTestetsets\n- TestetsetsTestetsetsTestetsetsTestetsetsTestetsets\n- TestetsetsTestetsetsTestetsetsTestetsetsTestetsets',
                style: blackTextStyle.copyWith(fontSize: 17),
              ),
            ),
            const SizedBox(height: 20),
            CustomTableCharacteristic(
              title: 'Kepala',
              value: Text(
                '- TestetsetsTestetsetsTestetsetsTestetsetsTestetsets',
                style: blackTextStyle.copyWith(fontSize: 17),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Kelebihan',
              style: blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
            ),
            const SizedBox(height: 10),
            const CustomListTile(value: 'Test'),
            const CustomListTile(value: 'Test'),
            const CustomListTile(value: 'Test'),
            const SizedBox(height: 10),
            Text(
              'Hal yang perlu diperhatikan',
              style: blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
            ),
            const SizedBox(height: 10),
            const CustomListTile(value: 'Test'),
            const CustomListTile(value: 'Test'),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String value;
  const CustomListTile({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Text(
        'Test',
        style: blackTextStyle.copyWith(fontSize: 17),
      ),
    );
  }
}

class CustomTableCharacteristic extends StatelessWidget {
  final String title;
  final Widget value;
  const CustomTableCharacteristic({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD5D5D5),
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: 130,
            child: Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 17),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              color: kWhiteColor,
              child: value,
            ),
          )
        ],
      ),
    );
  }
}
