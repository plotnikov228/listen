import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k23_bottomsheet/models/k23_model.dart';
import 'package:flutter/material.dart';

class K23Controller extends GetxController {
  TextEditingController fourHundredTwentyNineController =
      TextEditingController();

  TextEditingController fourHundredThirtyController = TextEditingController();

  TextEditingController fourHundredThirtyOneController =
      TextEditingController();

  TextEditingController fourHundredThirtyTwoController =
      TextEditingController();

  Rx<K23Model> k23ModelObj = K23Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fourHundredTwentyNineController.dispose();
    fourHundredThirtyController.dispose();
    fourHundredThirtyOneController.dispose();
    fourHundredThirtyTwoController.dispose();
  }
}
