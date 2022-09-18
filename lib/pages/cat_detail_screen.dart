import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/db/database.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatDetailScreen extends StatelessWidget {
  const CatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Detail Kucing',
        ),
      ),
      body: FutureBuilder(
        future: CatDatabase.instance.readDetailCat(arguments['catID']),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final cat = snapshot.data as Map<String, dynamic>;
            final strength = <Widget>[];
            for (var i = 0; i < cat['strength'].length; i++) {
              strength.add(CustomListTile(value: cat['strength'][i].strength));
            }
            return SingleChildScrollView(
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
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/markers/${cat['detail'][0].catId}.jpg',
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
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(
                                    cat['cat'][0].name,
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
                          cat['detail'][0].about,
                          style: blackTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: semiBold,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          cat['detail'][0].description,
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
                    style:
                        blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  CustomTableCharacteristic(
                    title: 'Ukuran',
                    value: Text(
                      cat['body'][0].size,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Kepala',
                    value: Text(
                      cat['body'][0].head,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Hidung',
                    value: Text(
                      cat['body'][0].nose,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Telinga',
                    value: Text(
                      cat['body'][0].ear,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Mata',
                    value: Text(
                      cat['body'][0].eye,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Badan',
                    value: Text(
                      cat['body'][0].body,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Kuku',
                    value: Text(
                      cat['body'][0].nail,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Bulu',
                    value: Text(
                      cat['body'][0].fur,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTableCharacteristic(
                    title: 'Ekor',
                    value: Text(
                      cat['body'][0].tail,
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Kelebihan',
                    style:
                        blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: cat['strength']
                        .map<Widget>(
                            (item) => CustomListTile(value: item.strength))
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Hal yang perlu diperhatikan',
                    style:
                        blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: cat['weakness']
                        .map<Widget>(
                            (item) => CustomListTile(value: item.weakness))
                        .toList(),
                  ),
                ],
              ),
            );
          } else {
            return Text(
              'Data masih kosong',
              style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            );
          }
        },
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
        value,
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
