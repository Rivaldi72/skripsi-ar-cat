import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class GuidelineScreen extends StatelessWidget {
  const GuidelineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Panduan',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            GuideListview(
              number: '1',
              value: 'Arahkan Kamera ke Kartu AR (Marker)',
              color: Color(0xFF39DDCA),
            ),
            GuideListview(
              number: '2',
              value:
                  'Pastikan posisi kartu sudah sepenuhnya terlihat pada kamera agar tidak terpotong gambar kucing tersebut',
              color: Color(0xFF6DBDF7),
            ),
            GuideListview(
              number: '3',
              value:
                  'Lalu tunggu beberapa detik sampai gambar kucing tersebut muncul dan bergerak',
              color: Color(0xFFF76F6D),
            ),
          ],
        ),
      ),
    );
  }
}

class GuideListview extends StatelessWidget {
  final String number, value;
  final Color color;
  const GuideListview({
    Key? key,
    required this.number,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: whiteTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              value,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
