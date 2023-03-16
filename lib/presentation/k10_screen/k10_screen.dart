import 'package:listenmebaby71_s_application14/presentation/k11_screen/k11_screen.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k10_screen/widgets/gridtwohundredfortythree_item_widget.dart';
import 'controller/k10_controller.dart';
import 'models/gridtwohundredfortythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
class K10Screen extends GetWidget<K10Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(130),
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.topCenter, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.img130x390,
                                  height: getVerticalSize(130),
                                  width: getHorizontalSize(390),
                                  radius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(getHorizontalSize(20)),
                                      bottomRight:
                                          Radius.circular(getHorizontalSize(20))),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 13, right: 16),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomAppBar(
                                                height: getVerticalSize(22),
                                                leadingWidth: 36,
                                                leading: AppbarImage(
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    svgPath: ImageConstant
                                                        .imgArrowleftWhiteA70001,
                                                    margin: getMargin(
                                                        left: 16, bottom: 2),
                                                    onTap: onTapArrowleft6),
                                                centerTitle: true,
                                                title:
                                                    AppbarTitle(text: "lbl22".tr),
                                                actions: [
                                                  AppbarImage(
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      svgPath: ImageConstant
                                                          .imgSearchWhiteA70001,
                                                      onTap: () => Get.dialog(CustomSearchAppBar("lbl22".tr, CustomSearchAppBarController())),
                                                      margin: getMargin(
                                                          left: 16,
                                                          right: 16,
                                                          bottom: 2))
                                                ]),
                                            Container(
                                                width: getHorizontalSize(341),
                                                margin: getMargin(
                                                    left: 8, top: 23, right: 7),
                                                child: Text("msg8".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtMontserratRomanMedium16WhiteA70001))
                                          ])))
                            ])),
                        Padding(
                            padding: getPadding(left: 16, top: 24, right: 16),
                            child: Obx(() => GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(198),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(12),
                                        crossAxisSpacing: getHorizontalSize(12)),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.k10ModelObj.value
                                    .gridtwohundredfortythreeItemList.length,
                                itemBuilder: (context, index) {
                                  GridtwohundredfortythreeItemModel model =
                                      controller.k10ModelObj.value
                                              .gridtwohundredfortythreeItemList[
                                          index];
                                  return GestureDetector(
                                    onTap: ()  {
                                  Get.bottomSheet(K11Screen(),
                                  isScrollControlled: true,
                                  ignoreSafeArea: false);
                                  },
                                    child: GridtwohundredfortythreeItemWidget(
                                        model),
                                  );
                                })))
                      ])),
            ),
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

  onTapArrowleft6() {
    Get.back();
  }
}
