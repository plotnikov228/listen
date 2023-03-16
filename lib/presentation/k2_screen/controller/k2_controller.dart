import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k2_screen/models/k2_model.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class K2Controller extends GetxController {
  TextEditingController tenController = TextEditingController();

  Rx<K2Model> k2ModelObj = K2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tenController.dispose();
  }
}
