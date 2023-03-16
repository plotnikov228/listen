import '../k23_bottomsheet/controller/k23_controller.dart';
import '../k23_bottomsheet/k23_bottomsheet.dart';
import 'controller/k18_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_checkbox.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class K18Bottomsheet extends StatelessWidget {
  K18Bottomsheet(this.controller);

  K18Controller controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 8, top: 16, right: 8, bottom: 16),
                decoration: AppDecoration.fillWhiteA70001
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 8, right: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl49".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold16)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 1),
                                    onTap: () {
                                      onTapImgClose();
                                    })
                              ])),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Padding(
                          padding: getPadding(left: 8, top: 14, right: 21),
                          child: Obx(() => CustomCheckbox(
                              text: "msg17".tr,
                              iconSize: getHorizontalSize(20),
                              value: controller.checkbox.value,
                              margin: getMargin(left: 8, top: 21, right: 21),
                              fontStyle: CheckboxFontStyle.MontserratRomanMedium16,
                              onChange: (value) {
                                controller.checkbox.value = value;
                              })),
                        ),
                      ),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Divider(color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 8, top: 14, right: 21),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: CustomRadioButton(
                                text: "msg17".tr,
                                iconSize: getHorizontalSize(20),
                                value: "msg17".tr,
                                groupValue: controller.radioGroup.value,
                                margin: getMargin(left: 8, top: 14, right: 21),
                                fontStyle: RadioFontStyle.MontserratRomanMedium16,
                                onChange: (value) {
                                  controller.radioGroup.value = value;
                                }),
                          )),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Divider(color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 8, top: 14, right: 21),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: CustomRadioButton(
                                text: "msg17".tr,
                                iconSize: getHorizontalSize(20),
                                value: "msg17".tr,
                                groupValue: controller.radioGroup1.value,
                                margin: getMargin(left: 8, top: 14, right: 21),
                                fontStyle: RadioFontStyle.MontserratRomanMedium16,
                                onChange: (value) {
                                  controller.radioGroup1.value = value;
                                }),
                          )),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 21, bottom: 7),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgPlusRed600,
                                        height: getSize(17),
                                        width: getSize(17)),
                                    Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: GestureDetector(
                                          onTap: openBottomSheet,
                                          child: Text("lbl50".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRomanBold13),
                                        ))
                                  ])))
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }

  openBottomSheet() => Get.bottomSheet(K23Bottomsheet(Get.put(K23Controller())),
  isScrollControlled: true);
}
