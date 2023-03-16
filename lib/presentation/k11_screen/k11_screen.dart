import 'controller/k11_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';

class K11Screen extends GetWidget<K11Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Container(
                width: double.maxFinite,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        padding: getPadding(
                            top: 16, bottom: 16),
                        decoration: AppDecoration
                            .outlineBlack900261
                            .copyWith(
                            borderRadius:
                            BorderRadiusStyle
                                .customBorderTL20),
                        child: Column(
                            mainAxisSize:
                            MainAxisSize.min,
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                            GestureDetector(
                            onTap: () {
                              onTapRowprice();
                    },
                        child: Padding(
                            padding:
                            getPadding(
                                left: 16,
                                right:
                                16),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          top:
                                          1),
                                      child: Text(
                                          "msg5"
                                              .tr,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMontserratRomanSemiBold16)),
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant
                                          .imgClose,
                                      onTap: onTapArrowleft7,
                                      height: getSize(
                                          20),
                                      width: getSize(
                                          20),
                                      margin: getMargin(
                                          bottom:
                                          1))
                                ]))),
                    CustomImageView(
                        imagePath:
                        ImageConstant
                            .img240x358,
                        height:
                        getVerticalSize(
                            240),
                        width:
                        getHorizontalSize(
                            358),
                        radius: BorderRadius
                            .circular(
                            getHorizontalSize(
                                8)),
                        margin: getMargin(
                            top: 22)),
                    Container(
                        height:
                        getVerticalSize(
                            421),
                        width:
                        double.maxFinite,
                        margin: getMargin(
                            top: 25,
                            bottom: 66),
                        child: Stack(
                            alignment: Alignment
                                .bottomCenter,
                            children: [
                              Align(
                                  alignment:
                                  Alignment
                                      .center,
                                  child: Padding(
                                      padding: getPadding(left: 16, right: 16),
                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                        Text(
                                            "lbl31".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMontserratRomanMedium12),
                                        Container(
                                            width: getHorizontalSize(358),
                                            margin: getMargin(top: 1),
                                            child: Text("msg_lorem_ipsum_dolor".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium15)),
                                        Padding(
                                            padding: getPadding(top: 21),
                                            child: Text("lbl32".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium12)),
                                        Padding(
                                            padding: getPadding(left: 8, top: 2),
                                            child: Text("msg11".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium15Black900)),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("lbl33".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium12)),
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("msg_z".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium15Black900)),
                                        Padding(
                                            padding: getPadding(top: 23),
                                            child: Text("msg12".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium12)),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                              Padding(padding: getPadding(top: 2), child: Text("msg13".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium14)),
                                              Padding(padding: getPadding(bottom: 1), child: Text("lbl_182".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium15Black900))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                              Padding(padding: getPadding(top: 1), child: Text("lbl34".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium14)),
                                              Text("lbl_365".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium15Black900)
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                              Padding(padding: getPadding(top: 10, bottom: 11), child: Text("lbl35".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanMedium14)),
                                              Container(width: getHorizontalSize(169), child: Text("msg14".tr, maxLines: null, textAlign: TextAlign.right, style: AppStyle.txtMontserratRomanMedium15))
                                            ]))
                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapRowprice();
                                                  },
                                                  child: Container(
                                                      width: double.maxFinite,
                                                      margin: getMargin(bottom: 22),
                                                      padding: getPadding(top: 16, bottom: 16),
                                                      decoration: AppDecoration.outlineBlack900261.copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
                                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                                        Padding(
                                                            padding: getPadding(top: 11, bottom: 10),
                                                            child: RichText(
                                                                text: TextSpan(children: [
                                                                  TextSpan(text: "lbl_400".tr, style: TextStyle(color: ColorConstant.red600, fontSize: getFontSize(24), fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                                                                  TextSpan(text: " ", style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(14), fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                                                                  TextSpan(text: "lbl_500".tr, style: TextStyle(color: ColorConstant.blueGray400, fontSize: getFontSize(15), fontFamily: 'Montserrat', fontWeight: FontWeight.w500))
                                                                ]),
                                                                textAlign: TextAlign.left)),
                                                        CustomButton(height: getVerticalSize(48), width: getHorizontalSize(166), text: "lbl36".tr, shape: ButtonShape.CircleBorder22, padding: ButtonPadding.PaddingT11, fontStyle: ButtonFontStyle.MontserratRomanBold16, suffixWidget: Container(margin: getMargin(left: 8), child: CustomImageView(svgPath: ImageConstant.imgPlusWhiteA70001)))
                                                      ]))))
                                        ])

                                ),
                          ]))))),
    );
  }

  onTapArrowleft7() {
    Get.back();
  }

  onTapRowtwohundredsixty() {
    Get.toNamed(AppRoutes.k10Screen);
  }

  onTapRowprice() {
    Get.toNamed(AppRoutes.k12Screen);
  }
}

