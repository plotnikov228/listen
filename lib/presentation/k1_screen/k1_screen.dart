import 'controller/k1_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_text_form_field.dart';

class K1Screen extends GetWidget<K1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("lbl".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold18))),
                                    Padding(
                                        padding: getPadding(top: 31),
                                        child: Text("lbl3".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium12)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller.nineController,
                                        hintText: "msg_7".tr,
                                        margin: getMargin(top: 6),
                                        padding:
                                            TextFormFieldPadding.PaddingT10,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 12,
                                                top: 12,
                                                right: 8,
                                                bottom: 12),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCall)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(44))),
                                    CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl4".tr,
                                        margin: getMargin(top: 32),
                                        shape: ButtonShape.CircleBorder22,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle: ButtonFontStyle
                                            .MontserratRomanBold16,
                                        onTap: onTaptf)
                                  ])))
                    ]))));
  }

  onTaptf() {
    Get.toNamed(AppRoutes.k0Screen);
  }
}
