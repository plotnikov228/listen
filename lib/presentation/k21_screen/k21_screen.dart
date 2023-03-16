import 'controller/k21_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/presentation/k23_bottomsheet/k23_bottomsheet.dart';
import 'package:listenmebaby71_s_application14/presentation/k23_bottomsheet/controller/k23_controller.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
class K21Screen extends GetWidget<K21Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 36,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 15),
                    onTap: onTapArrowleft15),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl46".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(358),
                              padding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15),
                              decoration: AppDecoration.outlineBlack90026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(314),
                                        margin: getMargin(right: 19),
                                        child: Text("msg17".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14Black900))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(358),
                              margin: getMargin(top: 12),
                              padding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15),
                              decoration: AppDecoration.outlineBlack90026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(314),
                                        margin: getMargin(right: 19),
                                        child: Text("msg17".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14Black900))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(358),
                              margin: getMargin(top: 12),
                              padding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15),
                              decoration: AppDecoration.outlineBlack90026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(314),
                                        margin: getMargin(right: 19),
                                        child: Text("msg17".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14Black900))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(358),
                              margin: getMargin(top: 12),
                              padding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15),
                              decoration: AppDecoration.outlineBlack90026
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(314),
                                        margin: getMargin(right: 19),
                                        child: Text("msg17".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14Black900))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowplus();
                          },
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlusRed600,
                                    height: getSize(17),
                                    width: getSize(17)),
                                Padding(
                                    padding: getPadding(left: 4, top: 1),
                                    child: Text("lbl50".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRomanBold13))
                              ]))),
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(bottom: 1),
                              child: Text("msg26".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanMedium12)))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(/*onChanged: (BottomBarEnum type) {}*/)));
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k4Page:
        return K4Page();
      case AppRoutes.k19Page:
        return K19Page();
      default:
        return K4Page();
    }
  }

  onTapRowplus() {
    Get.bottomSheet(
      K23Bottomsheet(
        Get.put(
          K23Controller(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapArrowleft15() {
    Get.back();
  }
}
