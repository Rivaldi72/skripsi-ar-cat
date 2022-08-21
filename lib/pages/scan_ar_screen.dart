import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'dart:io' show Platform;

class ScanARScreen extends StatefulWidget {
  const ScanARScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ScanARScreen> createState() => _ScanARScreenState();
}

class _ScanARScreenState extends State<ScanARScreen> {
  bool flashLightIsOn = false;

  void _turnOnFlashLight() {
    setState(() {
      flashLightIsOn = !flashLightIsOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget customFloatingButton() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(17),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlackColor.withOpacity(0.5),
                        blurRadius: 30,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/icon_back.png',
                    color: kBlackColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _turnOnFlashLight();
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: flashLightIsOn ? kPrimaryColor : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlackColor.withOpacity(0.5),
                        blurRadius: 30,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    flashLightIsOn
                        ? 'assets/images/icon_flashlight_on.png'
                        : 'assets/images/icon_flashlight.png',
                    color: flashLightIsOn ? kWhiteColor : kBlackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/bg_test.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.symmetric(
                    vertical: Platform.isAndroid ? 10 : 0,
                    horizontal: 20,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_scan_ar_top.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.symmetric(
                    vertical: Platform.isAndroid ? 10 : 0,
                    horizontal: 20,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_scan_ar_bottom.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              customFloatingButton(),
            ],
          ),
        ],
      ),
    );
  }
}
