import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k16_screen/models/k16_model.dart';
import 'package:flutter/material.dart';

class K16Controller extends GetxController {
  TextEditingController threeHundredFiftyController = TextEditingController();

  Rx<K16Model> k16ModelObj = K16Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    threeHundredFiftyController.dispose();
  }
}
