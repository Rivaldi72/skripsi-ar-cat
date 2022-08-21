import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';

class CatFunFactScreen extends StatelessWidget {
  const CatFunFactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Fakta Menarik Kucing',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          CatFunFactListItem(
            title: 'Miacis',
            desc:
                'Miacis dipercaya sebagai nenek moyang kucing. Binatang liar ini hidup pada masa Eosen yang dikenal sekitar 50 juta tahun silam. Rupanya miirip dengan musang.',
            image: 'assets/images/bg_cat_miacis.webp',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Mesir Kuno',
            desc:
                'Masyarakat Mesir Kuno adalah orang pertama yang menyadari potensi kucing sebagai pemburu tikus. Mereka memelihara kucing untuk melindungi ladang dan gudang jagung',
            image: 'assets/images/bg_cat_fun_fact_1.png',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Gerak Kucing',
            desc:
                'Kucing memiliki kemampuan gerak luar biasa. Kucing dapat melompat atau jatuh dari tempat tinggi tanpa cidera karena tulangnya sangat fleksibel',
            image: 'assets/images/bg_cat_fun_fact_2.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Warna Mata',
            desc:
                'Kucing dengan warna mata kucing lebih cenderung memiliki pandangan yang normal. Sebaliknya mata yang berwarna biru cenderung tuli',
            image: 'assets/images/bg_cat_fun_fact_4.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Kemampuan Mata',
            desc:
                'Kemampuan penglihatan kucing di tempat gelap/malam hari, enam kali lebih baik dari manusia',
            image: 'assets/images/bg_cat_fun_fact_3.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Membran Nictating',
            desc:
                'Kucing memiliki membran nictating yang berfungsi untuk melindungi mata dari kekeringan. Jika kucing sakit kelopak mata akan menutup sebagian membran nictating',
            image: 'assets/images/bg_cat_fun_fact_1.png',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Pendengaran',
            desc:
                'Daya pendengaran kucing jauh lebih peka daripada manusia dan anjing',
            image: 'assets/images/bg_cat_fun_fact_2.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Hidung',
            desc:
                'Kucing sangat peka dalam mencium bawang-bawangan. Kucing tidak menyukai aroma jeruk, lemon, dan sejenisnya. Hidung yang kering tanda kucing sedang demam atau dehidrasi',
            image: 'assets/images/bg_cat_fun_fact_4.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Jenis Bulu',
            desc:
                'Berdasarkan jenis bulu nya ras kucing terbagi menjadi 6 golongan, yaitu longhair, shorthair, semi-longhair, curly, wirehaired, dan hairless',
            image: 'assets/images/bg_cat_fun_fact_2.jpeg',
          ),
          SizedBox(height: 20),
          CatFunFactListItem(
            title: 'Pemilik Kucing',
            desc:
                'Ketika kucing menggosokkan badannya ke kaku atau badan anda, ia sedang menandai anda dengan baunya dan menyatakan anda sebagai pemiliknya',
            image: 'assets/images/bg_cat_fun_fact_3.jpeg',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CatFunFactListItem extends StatelessWidget {
  final String title, desc, image;

  const CatFunFactListItem({
    Key? key,
    required this.title,
    required this.desc,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width - 40,
      height: 360,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: kBlackColor.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
          Text(
            desc,
            style: blackTextStyle.copyWith(fontSize: 18, height: 1.1),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
