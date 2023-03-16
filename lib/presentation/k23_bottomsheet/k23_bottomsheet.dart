import 'controller/k23_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K23Bottomsheet extends StatelessWidget {
  K23Bottomsheet(this.controller);

  K23Controller controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(all: 16),
                decoration: AppDecoration.fillWhiteA70001
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("lbl50".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanSemiBold16)),
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 1),
                                onTap: () {
                                  onTapImgClose();
                                })
                          ]),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller:
                              controller.fourHundredTwentyNineController,
                          hintText: "lbl54".tr,
                          margin: getMargin(top: 22)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.fourHundredThirtyController,
                          hintText: "lbl55".tr,
                          margin: getMargin(top: 12)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .fourHundredThirtyOneController,
                                        hintText: "lbl56".tr,
                                        margin: getMargin(right: 6))),
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .fourHundredThirtyTwoController,
                                        hintText: "lbl57".tr,
                                        margin: getMargin(left: 6),
                                        textInputAction: TextInputAction.done))
                              ])),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(132),
                          text: "lbl58".tr,
                          margin: getMargin(top: 24, bottom: 8),
                          shape: ButtonShape.CircleBorder22,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.MontserratRomanBold16,
                          onTap: onTaptf)
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }

  onTaptf() {
    if(Get.currentRoute == AppRoutes.k12Screen || Get.currentRoute == AppRoutes.k21Screen) Get.back();
    else
    Get.toNamed(AppRoutes.k21Screen);
  }
}
