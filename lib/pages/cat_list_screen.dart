import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/db/database.dart';
import 'package:skripsi_ar_cat/model/cat.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_cat_type_list_item.dart';

class CatListScreen extends StatefulWidget {
  const CatListScreen({Key? key}) : super(key: key);

  @override
  State<CatListScreen> createState() => _CatListScreenState();
}

class _CatListScreenState extends State<CatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: CustomAppBar(
            title: 'Jenis-Jenis Kucing',
          ),
        ),
        body: FutureBuilder<List<Cat>>(
          future: CatDatabase.instance.readAllCat(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return Center(
                  child: Text(
                    'Data masih kosong',
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                itemBuilder: (context, index) {
                  final cat = snapshot.data![index];
                  return CustomCatTypeListItem(
                    image: 'assets/markers/${index + 1}.jpg',
                    name: cat.name,
                    type: cat.type,
                    action: () {
                      Navigator.pushNamed(context, '/cat-detail');
                    },
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            }
          },
        ));
  }
}
