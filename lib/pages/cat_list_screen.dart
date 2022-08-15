import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_cat_type_list_item.dart';

class CatListScreen extends StatelessWidget {
  const CatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Jenis-Jenis Kucing',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        children: [
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
          CustomCatTypeListItem(
            image: 'assets/images/cat_test.jpeg',
            name: 'Abyssinian',
            about: 'Test test',
            action: () {
              Navigator.pushNamed(context, '/cat-detail');
            },
          ),
        ],
      ),
    );
  }
}
