import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/pages/cat_breeding_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_buying_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_caring_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_detail_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_fun_fact.dart';
import 'package:skripsi_ar_cat/pages/cat_grooming_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_health_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_list_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_raising_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_tips_screen.dart';
import 'package:skripsi_ar_cat/pages/guideline_screen.dart';
import 'package:skripsi_ar_cat/pages/home_screen.dart';
import 'package:skripsi_ar_cat/pages/scan_ar_screen.dart';
import 'package:skripsi_ar_cat/pages/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/home-screen': (context) => const HomeScreen(),
        '/scan-ar': (context) => const ScanARScreen(),
        '/cat-list': (context) => const CatListScreen(),
        '/cat-breeding': (context) => const CatBreedingScreen(),
        '/cat-detail': (context) => const CatDetailScreen(),
        '/cat-tips': (context) => const CatTipsScreen(),
        '/cat-buying': (context) => const CatBuyingScreen(),
        '/cat-caring': (context) => const CatCaringScreen(),
        '/cat-raising': (context) => const CatRaisingScreen(),
        '/cat-health': (context) => const CatHealthScreen(),
        '/cat-grooming': (context) => const CatGroomingScreen(),
        '/cat-fun-fact': (context) => const CatFunFactScreen(),
        '/guideline': (context) => const GuidelineScreen(),
      },
    );
  }
}
