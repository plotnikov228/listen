import 'package:listenmebaby71_s_application14/presentation/k11_screen/k11_screen.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k8_screen/widgets/gridonehundredninetyfour_item_widget.dart';
import '../k8_screen/widgets/listonehundredeightyone_item_widget.dart';
import '../k8_screen/widgets/listonehundredeightysix_item_widget.dart';
import 'controller/k8_controller.dart';
import 'models/gridonehundredninetyfour_item_model.dart';
import 'models/listonehundredeightyone_item_model.dart';
import 'models/listonehundredeightysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';

class K8Screen extends GetWidget<K8Controller> {
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
                                                  onTap: onTapArrowleft4),
                                              centerTitle: true,
                                              title: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl28".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA70001,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Montserrat Alternates',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "lbl_z2".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA70001,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "lbl29".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA70001,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Montserrat Alternates',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(20),
                                                    onTap: () {
                                                      onTapSearch();
                                                    },
                                                    width: getSize(20),
                                                    svgPath: ImageConstant
                                                        .imgSearchWhiteA70001,
                                                    margin: getMargin(
                                                        left: 16,
                                                        top: 1,
                                                        right: 16,))
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
                                                    .k8ModelObj
                                                    .value
                                                    .listonehundredeightyoneItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListonehundredeightyoneItemModel
                                                      model = controller
                                                              .k8ModelObj
                                                              .value
                                                              .listonehundredeightyoneItemList[
                                                          index];
                                                  return GestureDetector(
                                                    onTap: () => Get.toNamed(AppRoutes.k9Screen),
                                                    child: ListonehundredeightyoneItemWidget(
                                                        model),
                                                  );
                                                }))),
                                        Padding(
                                            padding:
                                                getPadding(top: 41, right: 16),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text("msg10".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanSemiBold18),
                                                  GestureDetector(
                                                    onTap:()=> Get.toNamed(AppRoutes.k3Screen),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 44, top: 6),
                                                            child: Text("lbl7".tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                    TextAlign.left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanBold13)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 4, bottom: 1))
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
                                                            .k8ModelObj
                                                            .value
                                                            .listonehundredeightysixItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListonehundredeightysixItemModel
                                                              model = controller
                                                                      .k8ModelObj
                                                                      .value
                                                                      .listonehundredeightysixItemList[
                                                                  index];
                                                          return GestureDetector(
                                                            onTap: ()=> openBottomSheet(),
                                                            child: ListonehundredeightysixItemWidget(
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
                                                    .k8ModelObj
                                                    .value
                                                    .gridonehundredninetyfourItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  GridonehundredninetyfourItemModel
                                                      model = controller
                                                              .k8ModelObj
                                                              .value
                                                              .gridonehundredninetyfourItemList[
                                                          index];

                                                  return GestureDetector(
                                                    onTap:()=>openBottomSheet(),
                                                    child: GridonehundredninetyfourItemWidget(
                                                        model),
                                                  );
                                                }))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 16, right: 16),
                                                child: GestureDetector(
                                                  onTap: ()=>Get.toNamed(AppRoutes.k9Screen),
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
    Get.dialog(CustomSearchAppBar("lbl28".tr + "lbl_z2".tr + "lbl29".tr, CustomSearchAppBarController()));
  }
  onTapArrowleft4() {
    Get.back();
  }

  openBottomSheet () {
    Get.bottomSheet(K11Screen(),
      isScrollControlled: true,
    ignoreSafeArea: false
    );
  }
}
