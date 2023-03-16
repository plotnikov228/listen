import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k13_bottomsheet/models/k13_model.dart';
import 'package:flutter/material.dart';

class K13Controller extends GetxController {
  TextEditingController twoHundredNinetyThreeController =
      TextEditingController();

  TextEditingController threeHundredOneController = TextEditingController();

  Rx<K13Model> k13ModelObj = K13Model().obs;

  RxBool checkbox = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    twoHundredNinetyThreeController.dispose();
    threeHundredOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    k13ModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    k13ModelObj.value.dropdownItemList.refresh();
  }
}
