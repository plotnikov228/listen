import 'package:listenmebaby71_s_application14/presentation/k11_screen/k11_screen.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k9_screen/widgets/gridtwohundredtwentyfive_item_widget.dart';
import '../k9_screen/widgets/listtwohundredseventeen_item_widget.dart';
import '../k9_screen/widgets/listtwohundredtwelve_item_widget.dart';
import 'controller/k9_controller.dart';
import 'models/gridtwohundredtwentyfive_item_model.dart';
import 'models/listtwohundredseventeen_item_model.dart';
import 'models/listtwohundredtwelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
class K9Screen extends GetWidget<K9Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
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
                                        left: 16, top: 11, right: 16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(21),
                                              leadingWidth: 36,
                                              leading: AppbarImage(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA70001,
                                                  margin: getMargin(
                                                      left: 16, top: 1),
                                                  onTap: onTapArrowleft5),
                                              centerTitle: true,
                                              title:
                                                  AppbarTitle(text: "lbl21".tr),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    svgPath: ImageConstant
                                                        .imgSearchWhiteA70001,
                                                    onTap: onTapSearch,
                                                    margin: getMargin(
                                                        left: 16,
                                                        top: 1,
                                                        right: 16))
                                              ]),
                                          Container(
                                              width: getHorizontalSize(341),
                                              margin: getMargin(
                                                  left: 8, top: 25, right: 7),
                                              child: Text("msg8".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtMontserratRomanMedium16WhiteA70001))
                                        ])))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(29),
                                            child: Obx(() => ListView.separated(
                                                physics: PageScrollPhysics(),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(12));
                                                },
                                                itemCount: controller
                                                    .k9ModelObj
                                                    .value
                                                    .listtwohundredtwelveItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListtwohundredtwelveItemModel
                                                      model = controller
                                                              .k9ModelObj
                                                              .value
                                                              .listtwohundredtwelveItemList[
                                                          index];
                                                  return GestureDetector(
                                                    onTap: ()=> Get.toNamed(AppRoutes.k10Screen),
                                                    child: ListtwohundredtwelveItemWidget(
                                                        model),
                                                  );
                                                }))),
                                        Padding(
                                            padding:
                                                getPadding(top: 40, right: 16),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRomanSemiBold18)),
                                                  Spacer(),
                                                  GestureDetector(
                                                    onTap:toK3Screen,
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                getPadding(top: 7),
                                                            child: Text("lbl7".tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                    TextAlign.left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanBold13)),CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 5, bottom: 1))
                                                      ],
                                                    ),
                                                  ),

                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(211),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics: PageScrollPhysics(),
                                                        padding:
                                                            getPadding(top: 14),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      12));
                                                        },
                                                        itemCount: controller
                                                            .k9ModelObj
                                                            .value
                                                            .listtwohundredseventeenItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListtwohundredseventeenItemModel
                                                              model = controller
                                                                      .k9ModelObj
                                                                      .value
                                                                      .listtwohundredseventeenItemList[
                                                                  index];
                                                          return GestureDetector(
                                                            onTap: ()=>openBottomSheet(),
                                                            child: ListtwohundredseventeenItemWidget(
                                                                model),
                                                          );
                                                        })))),
                                        Padding(
                                            padding: getPadding(top: 41),
                                            child: Text("lbl22".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold18)),
                                        Padding(
                                            padding: getPadding(
                                                top: 14, right: 16),
                                            child: Obx(() => GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(
                                                                198),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                12),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                12)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .k9ModelObj
                                                    .value
                                                    .gridtwohundredtwentyfiveItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  GridtwohundredtwentyfiveItemModel
                                                      model = controller
                                                              .k9ModelObj
                                                              .value
                                                              .gridtwohundredtwentyfiveItemList[
                                                          index];
                                                  return GestureDetector(
                                                    onTap: ()=>openBottomSheet(),
                                                    child: GridtwohundredtwentyfiveItemWidget(
                                                        model),
                                                  );
                                                }))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 16, right: 16),
                                                child: GestureDetector(
                                                  onTap:()=> Get.toNamed(AppRoutes.k10Screen),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 3),
                                                            child: Text(
                                                                "lbl26".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanBold16Red600)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightRed600,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ]),
                                                )))
                                      ]))))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(/*onChanged: (BottomBarEnum type) {}*/)));
  }

  onTapSearch() {
    Get.dialog(CustomSearchAppBar("lbl21".tr, CustomSearchAppBarController()));
  }

  onTapArrowleft5() {
    Get.back();
  }

  toK3Screen () => Get.toNamed(AppRoutes.k3Screen);

  openBottomSheet () {
    Get.bottomSheet(K11Screen(),
      isScrollControlled: true,
    ignoreSafeArea: false);
  }
}
