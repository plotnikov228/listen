import 'package:listenmebaby71_s_application14/presentation/k18_bottomsheet/controller/k18_controller.dart';
import 'package:listenmebaby71_s_application14/presentation/k18_bottomsheet/k18_bottomsheet.dart';

import 'controller/k13_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_checkbox.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_drop_down.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K13Bottomsheet extends StatelessWidget {
  K13Bottomsheet(this.controller);

  K13Controller controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA70001
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 16, top: 16, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("msg16".tr,
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
                                ]))),
                    Padding(
                        padding: getPadding(left: 16, top: 23),
                        child: Text("lbl39".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium12)),
                    Container(
                        width: getHorizontalSize(337),
                        margin: getMargin(left: 16, top: 1, right: 36),
                        child: Text("msg17".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium15)),
                    Padding(
                        padding: getPadding(left: 16, top: 9),
                        child: GestureDetector(
                          onTap: () {
                            onTapts();
                          },
                          child: Text("lbl40".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanBold13),
                        )),
                    Padding(
                        padding: getPadding(left: 16, top: 23),
                        child: Text("lbl3".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium12)),
                    CustomTextFormField(
                        focusNode: FocusNode(),
                        controller:
                            controller.twoHundredNinetyThreeController,
                        hintText: "msg_7_911_185_78_41".tr,
                        margin: getMargin(left: 16, top: 6, right: 16),
                        padding: TextFormFieldPadding.PaddingT10,
                        alignment: Alignment.center,
                        prefix: Container(
                            margin: getMargin(
                                left: 12, top: 12, right: 8, bottom: 12),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCall)),
                        prefixConstraints:
                            BoxConstraints(maxHeight: getVerticalSize(44))),
                    Padding(
                        padding: getPadding(left: 16, top: 25),
                        child: Text("lbl41".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium12)),
                    Padding(
                        padding: getPadding(left: 16, top: 12, right: 90),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: getSize(20),
                                  width: getSize(20),
                                  margin: getMargin(top: 6, bottom: 9),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(10)),
                                      border: Border.all(
                                          color: ColorConstant.black900,
                                          width: getHorizontalSize(2)))),
                              Expanded(
                                  child: Padding(
                                      padding: getPadding(left: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("msg18".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium16Black900),
                                            Text("msg19".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium12)
                                          ])))
                            ])),
                    Obx(() => CustomCheckbox(
                        text: "msg20".tr,
                        iconSize: getHorizontalSize(20),
                        value: controller.checkbox.value,
                        margin: getMargin(left: 16, top: 14),
                        fontStyle: CheckboxFontStyle.MontserratRomanMedium16,
                        onChange: (value) {
                          controller.checkbox.value = value;
                        })),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 16, top: 10, right: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomDropDown(
                                      width: getHorizontalSize(210),
                                      focusNode: FocusNode(),
                                      icon: Container(
                                          margin:
                                              getMargin(left: 30, right: 12),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdown)),
                                      hintText: "lbl42".tr,
                                      items: controller
                                          .k13ModelObj.value.dropdownItemList,
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      }),
                                  CustomButton(
                                      height: getVerticalSize(44),
                                      width: getHorizontalSize(136),
                                      text: "lbl_11_00_13_00".tr,
                                      margin: getMargin(left: 12),
                                      variant: ButtonVariant.FillGray100,
                                      shape: ButtonShape.CircleBorder22,
                                      padding: ButtonPadding.PaddingT11,
                                      fontStyle: ButtonFontStyle
                                          .MontserratRomanMedium16Black900,
                                      suffixWidget: Container(
                                          margin: getMargin(left: 4),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdown)))
                                ]))),
                    Padding(
                        padding: getPadding(left: 16, top: 25),
                        child: Text("msg21".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium12)),
                    CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.threeHundredOneController,
                        hintText: "msg22".tr,
                        margin: getMargin(left: 16, top: 6, right: 16),
                        padding: TextFormFieldPadding.PaddingT13,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.center,
                        maxLines: 6),
                    Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 5),
                        padding: getPadding(
                            left: 32, top: 16, right: 32, bottom: 16),
                        decoration: AppDecoration.outlineBlack900261.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 2, bottom: 1),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl37".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium12),
                                        Text("lbl_440".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold24)
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(48),
                                  width: getHorizontalSize(131),
                                  text: "lbl43".tr,
                                  shape: ButtonShape.CircleBorder22,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle:
                                      ButtonFontStyle.MontserratRomanBold16)
                            ]))
                  ]))),
    );
  }

  onTapts() {
    Get.bottomSheet(
      K18Bottomsheet(
        Get.put(
          K18Controller(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapImgClose() {
    Get.back();
  }
}
