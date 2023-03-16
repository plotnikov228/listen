import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k1_screen/models/k1_model.dart';
import 'package:flutter/material.dart';

class K1Controller extends GetxController {
  TextEditingController nineController = TextEditingController();

  Rx<K1Model> k1ModelObj = K1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nineController.dispose();
  }
}
