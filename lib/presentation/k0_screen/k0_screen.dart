import 'controller/k0_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';

class K0Screen extends GetWidget<K0Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 8, top: 39, right: 8, bottom: 39),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_natural".tr,
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(24),
                                    fontFamily: 'Montserrat Alternates',
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: "lbl_market".tr,
                                style: TextStyle(
                                    color: ColorConstant.red600,
                                    fontSize: getFontSize(24),
                                    fontFamily: 'Montserrat Alternates',
                                    fontWeight: FontWeight.w600))
                          ]),
                          textAlign: TextAlign.left),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 79, bottom: 5),
                              padding: getPadding(
                                  left: 12, top: 20, right: 12, bottom: 20),
                              decoration: AppDecoration.outlineBlack90026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(bottom: 2)),
                                          Padding(
                                              padding: getPadding(left: 90),
                                              child: Text("lbl".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanSemiBold18))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 31),
                                        child: Text("lbl_sms".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium12)),
                                    CustomButton(
                                        height: getVerticalSize(44),
                                        text: "lbl_0000".tr,
                                        margin: getMargin(top: 7),
                                        variant: ButtonVariant.FillGray100,
                                        shape: ButtonShape.CircleBorder22,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle: ButtonFontStyle
                                            .MontserratRomanMedium16),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 13),
                                            child: Text("msg".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium12))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 7),
                                            child: Text("msg2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanBold13))),
                                    CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl2".tr,
                                        margin: getMargin(top: 30),
                                        shape: ButtonShape.CircleBorder22,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle: ButtonFontStyle
                                            .MontserratRomanBold16,
                                        onTap: onTaptf)
                                  ])))
                    ]))));
  }

  onTaptf() {
    Get.toNamed(AppRoutes.k2Screen);
  }
}
