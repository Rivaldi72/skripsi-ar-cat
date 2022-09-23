import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/pages/about_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_bathing_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_blood_type_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_breeding_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_buying_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_caring_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_cutting_nails_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_detail_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_disease_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_fun_fact.dart';
import 'package:skripsi_ar_cat/pages/cat_grooming_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_health_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_list_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_raising_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_tips_screen.dart';
import 'package:skripsi_ar_cat/pages/cat_vaccinate_screen.dart';
import 'package:skripsi_ar_cat/pages/guideline_screen.dart';
import 'package:skripsi_ar_cat/pages/home_screen.dart';
import 'package:skripsi_ar_cat/pages/scan_ar_screen.dart';
import 'package:skripsi_ar_cat/pages/splash_screen.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
    show ArCoreController;

void main() async {
  if (Platform.isAndroid) {
    WidgetsFlutterBinding.ensureInitialized();
    print('ARCORE IS AVAILABLE?');
    print(await ArCoreController.checkArCoreAvailability());
    print('\nAR SERVICES INSTALLED?');
    print(await ArCoreController.checkIsArCoreInstalled());
  } else if (Platform.isIOS) {
    // iOS-specific code
  }
  runApp(MyApp());
}

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
        '/cat-vaccinate': (context) => const CatVaccinateScreen(),
        '/cat-disease': (context) => const CatDiseaseScreen(),
        '/cat-blood-type': (context) => const CatBloodTypeScreen(),
        '/cat-grooming': (context) => const CatGroomingScreen(),
        '/cat-bathing': (context) => const CatBathingScreen(),
        '/cat-cutting-nails': (context) => const CatCuttingNailsScreen(),
        '/cat-fun-fact': (context) => const CatFunFactScreen(),
        '/guideline': (context) => const GuidelineScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
