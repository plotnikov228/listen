import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/model.dart';

class CustomSearchAppBarController extends GetxController {
  Rx<CustomSearchAppBarModel> k18ModelObj = CustomSearchAppBarModel().obs;
  TextEditingController threeHundredFiftyController = TextEditingController();
  RxBool checkbox = false.obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}