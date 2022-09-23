import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'dart:io' show Platform;
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class ScanARScreen extends StatefulWidget {
  const ScanARScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ScanARScreen> createState() => _ScanARScreenState();
}

class _ScanARScreenState extends State<ScanARScreen> {
  bool flashLightIsOn = false;
  ArCoreController? arCoreController;
  Map<String, ArCoreAugmentedImage> augmentedImagesMap = Map();
  Map<String, Uint8List> bytesMap = Map();

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

    Future _addSphere(ArCoreAugmentedImage augmentedImage) async {
      final ByteData textureBytes =
          await rootBundle.load('assets/images/earth.jpg');

      final material = ArCoreMaterial(
        color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureBytes.buffer.asUint8List(),
      );
      final sphere = ArCoreSphere(
        materials: [material],
        radius: augmentedImage.extentX / 2,
      );
      final node = ArCoreNode(
        shape: sphere,
      );
      arCoreController?.addArCoreNodeToAugmentedImage(
          node, augmentedImage.index);
    }

    _handleOnTrackingImage(ArCoreAugmentedImage augmentedImage) {
      if (!augmentedImagesMap.containsKey(augmentedImage.name)) {
        // print("${augmentedImagesMap.containsKey(augmentedImage.name)} ini dia");
        // print("${augmentedImage.name} ini dia");
        // print("${augmentedImage.index} ini dia");
        print("${augmentedImagesMap.isEmpty} ini dia");
        print("$augmentedImagesMap ini dia");
        // if (augmentedImagesMap.isNotEmpty) {
        //   augmentedImagesMap.forEach((key, value) {
        //     print('${value.name} ini dia');
        //     print('${value.index} ini dia');
        //     arCoreController?.removeNodeWithIndex(value.index);
        //   });
        // }

        augmentedImagesMap[augmentedImage.name] = augmentedImage;
        print("${augmentedImagesMap[augmentedImage.name]?.name} ini dia");
        switch (augmentedImage.name) {
          case "earth_augmented_image":
            _addSphere(augmentedImage);
            print('${augmentedImage.name} ini dia');
            break;
        }
      }
    }

    loadMultipleImage() async {
      final ByteData bytes1 =
          await rootBundle.load('assets/images/earth_augmented_image.jpg');
      bytesMap["earth_augmented_image"] = bytes1.buffer.asUint8List();

      arCoreController?.loadMultipleAugmentedImage(bytesMap: bytesMap);
    }

    void _onArCoreViewCreated(ArCoreController controller) async {
      arCoreController = controller;
      arCoreController?.onTrackingImage = _handleOnTrackingImage;
      loadMultipleImage();
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
            child: ArCoreView(
              onArCoreViewCreated: _onArCoreViewCreated,
              type: ArCoreViewType.AUGMENTEDIMAGES,
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
