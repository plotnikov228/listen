import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';

import '../../widgets/custom_search_appbar/custom_search_appbar.dart';
import 'controller/k14_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
class K14Screen extends GetWidget<K14Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(44),
                leadingWidth: 36,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 11),
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl44".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      onTap: () => Get.dialog(CustomSearchAppBar("lbl44".tr, CustomSearchAppBarController())),
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 9, top: 22, right: 9, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 7, top: 3),
                          child: Text("msg_7_911_185_78_41".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanSemiBold18)),
                      Container(
                          width: getHorizontalSize(338),
                          margin: getMargin(left: 7, top: 4, right: 26),
                          child: Text("msg17".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtMontserratRomanMedium14Bluegray400)),
                      Padding(
                          padding: getPadding(left: 7, top: 39, right: 7),
                          child: GestureDetector(
                            onTap: toK19,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl45".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratRomanSemiBold16),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightBlack900,
                                      height: getSize(20),
                                      width: getSize(20))
                                ]),
                          )),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Divider(color: ColorConstant.gray400)),
                      GestureDetector(
                          onTap: () {
                            onTapRowthreehundredeight();
                          },
                          child: Padding(
                              padding: getPadding(left: 7, top: 23, right: 7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl46".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold16)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(bottom: 1))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Divider(color: ColorConstant.gray400)),
                      Padding(
                          padding: getPadding(left: 7, top: 23, right: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl47".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanSemiBold16),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(20),
                                    width: getSize(20))
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 7),
                          child: Text("msg23".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtMontserratRomanSemiBold16Bluegray400))
                    ])),
            bottomNavigationBar:
                CustomBottomBar()));
  }

  onTapRowthreehundredeight() {
    Get.toNamed(AppRoutes.k21Screen);
  }

  toK19() {
    Get.toNamed(AppRoutes.k19Page);
  }

  onTapArrowleft9() {
    Get.back();
  }
}
