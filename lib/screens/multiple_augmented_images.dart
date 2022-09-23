import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class MultipleAugmentedImagesPage extends StatefulWidget {
  @override
  _MultipleAugmentedImagesPageState createState() =>
      _MultipleAugmentedImagesPageState();
}

class _MultipleAugmentedImagesPageState
    extends State<MultipleAugmentedImagesPage> {
  ArCoreController? arCoreController;
  Map<String, ArCoreAugmentedImage> augmentedImagesMap = Map();
  Map<String, Uint8List> bytesMap = Map();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Multiple augmented images'),
        ),
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          type: ArCoreViewType.AUGMENTEDIMAGES,
        ),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) async {
    arCoreController = controller;
    arCoreController?.onTrackingImage = _handleOnTrackingImage;
    loadMultipleImage();
  }

  loadMultipleImage() async {
    final ByteData bytes1 =
        await rootBundle.load('assets/earth_augmented_image.jpg');
    final ByteData bytes2 = await rootBundle.load('assets/prova_texture.png');
    final ByteData bytes3 = await rootBundle.load('assets/umano_digitale.png');
    final ByteData bytes4 = await rootBundle.load('assets/1.jpg');
    final ByteData bytes5 = await rootBundle.load('assets/2.jpg');
    final ByteData bytes6 = await rootBundle.load('assets/3.jpg');
    bytesMap["earth_augmented_image"] = bytes1.buffer.asUint8List();
    bytesMap["prova_texture"] = bytes2.buffer.asUint8List();
    bytesMap["umano_digitale"] = bytes3.buffer.asUint8List();
    bytesMap["kucing1"] = bytes4.buffer.asUint8List();
    bytesMap["kucing2"] = bytes5.buffer.asUint8List();
    bytesMap["kucing3"] = bytes6.buffer.asUint8List();

    arCoreController?.loadMultipleAugmentedImage(bytesMap: bytesMap);
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
          // arCoreController?.removeNode(augmentedImage);
          break;
        case "prova_texture":
          _addCube(augmentedImage);
          break;
        case "umano_digitale":
          _addCylindre(augmentedImage);
          break;
        case "kucing1":
          _addCube(augmentedImage);
          break;
        case "kucing2":
          _addCube(augmentedImage);
          break;
        case "kucing3":
          _addCube(augmentedImage);
          break;
      }
    }
  }

  Future _addSphere(ArCoreAugmentedImage augmentedImage) async {
    final ByteData textureBytes = await rootBundle.load('assets/earth.jpg');

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
    final toucanNode = ArCoreReferenceNode(
      name: "Toucano",
      objectUrl:
          "https://github.com/Rivaldi72/skripsi-ar-object/raw/master/AbyssinianCat.glb",
    );
    arCoreController?.addArCoreNodeToAugmentedImage(
        toucanNode, augmentedImage.index);
  }

  void _addCube(ArCoreAugmentedImage augmentedImage) {
    double size = augmentedImage.extentX / 2;
    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244),
      metallic: 1.0,
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(size, size, size),
    );
    final node = ArCoreNode(
      shape: cube,
    );
    arCoreController?.addArCoreNodeToAugmentedImage(node, augmentedImage.index);
  }

  void _addCylindre(ArCoreAugmentedImage augmentedImage) {
    final material = ArCoreMaterial(
      color: Colors.red,
      reflectance: 1.0,
    );
    final cylindre = ArCoreCylinder(
      materials: [material],
      radius: augmentedImage.extentX / 2,
      height: augmentedImage.extentX / 3,
    );
    final node = ArCoreNode(
      shape: cylindre,
    );
    arCoreController?.addArCoreNodeToAugmentedImage(node, augmentedImage.index);
  }

  @override
  void dispose() {
    arCoreController?.dispose();
    super.dispose();
  }
}
