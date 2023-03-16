import 'package:listenmebaby71_s_application14/presentation/k20_screen/k20_screen.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k11_screen/k11_screen.dart';
import '../k2_screen/widgets/k0_item_widget.dart';
import '../k2_screen/widgets/listfiftyeight_item_widget.dart';
import '../k2_screen/widgets/listfiftyone_item_widget.dart';
import '../k2_screen/widgets/listfortyone_item_widget.dart';
import '../k2_screen/widgets/listsixteen_item_widget.dart';
import 'controller/k2_controller.dart';
import 'models/k0_item_model.dart';
import 'models/listfiftyeight_item_model.dart';
import 'models/listfiftyone_item_model.dart';
import 'models/listfortyone_item_model.dart';
import 'models/listsixteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_view.dart';

class K2Screen extends GetWidget<K2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 8, top: 11),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_natural".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Montserrat Alternates',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "lbl_market".tr,
                                        style: TextStyle(
                                            color: ColorConstant.red600,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Montserrat Alternates',
                                            fontWeight: FontWeight.w600))
                                  ]),
                                  textAlign: TextAlign.left),
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller: controller.tenController,
                                  hintText: "lbl5".tr,
                                  margin:
                                      getMargin(left: 8, top: 16, right: 16),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 8,
                                          bottom: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(44))),
                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(374),
                                  margin: getMargin(top: 24),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(374),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  241),
                                                          child: Text("msg3".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold20)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 4),
                                                          child: Text(
                                                              "lbl_219".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanMedium16)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            toK3Screen();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 51),
                                                              child: Row(
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "msg4"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratRomanBold16)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowrightWhiteA70001,
                                                                        height: getSize(
                                                                            24),
                                                                        width: getSize(
                                                                            24))
                                                                  ])))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 40, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl6".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold18)),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 7),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    toK3Screen();
                                                  },
                                                  child: Text("lbl7".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanBold13),
                                                )),
                                            CustomImageView(
                                                svgPath:
                                                ImageConstant.imgArrowright,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin:
                                                getMargin(top: 5, bottom: 1))
                                          ],
                                        ),

                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(211),
                                      child: Obx(() => ListView.separated(
                                        physics: PageScrollPhysics(),
                                          padding: getPadding(left: 8, top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: controller.k2ModelObj.value
                                              .listsixteenItemList.length,
                                          itemBuilder: (context, index) {
                                            ListsixteenItemModel model =
                                                controller.k2ModelObj.value
                                                    .listsixteenItemList[index];
                                            return GestureDetector(
                                              onTap: () => openBottomSheet(),
                                                child: ListsixteenItemWidget(model));
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    toK3Screen();
                                  },
                                  child: Padding(
                                      padding: getPadding(
                                          left: 8, top: 41, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("lbl8".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold18),
                                            Spacer(),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Text("lbl9".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanBold13)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(
                                                    top: 4, bottom: 1))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 14, right: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(90),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(12),
                                              crossAxisSpacing:
                                                  getHorizontalSize(12)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller
                                          .k2ModelObj.value.k0ItemList.length,
                                      itemBuilder: (context, index) {
                                        K0ItemModel model = controller
                                            .k2ModelObj.value.k0ItemList[index];
                                        return K0ItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(374),
                                  margin: getMargin(top: 40),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img180x374,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(374),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl11".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRomanSemiBold20WhiteA70001),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  199),
                                                          margin:
                                                              getMargin(top: 7),
                                                          child: Text("msg6".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanMedium16WhiteA70001)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            toK3Screen();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 54),
                                                              child: Row(
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl12"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratRomanBold16)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowrightWhiteA70001,
                                                                        height: getSize(
                                                                            24),
                                                                        width: getSize(
                                                                            24))
                                                                  ])))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 41, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("lbl13".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold18),
                                        Spacer(),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: GestureDetector(
                                              onTap: () {
                                                toK7Screen();
                                              },
                                              child: Text("lbl14".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanBold13),
                                            )),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin: getMargin(
                                                left: 1, top: 4, bottom: 1))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(244),
                                      child: Obx(() => ListView.separated(
                                        physics: PageScrollPhysics(),
                                          padding: getPadding(left: 8, top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: controller.k2ModelObj.value
                                              .listfortyoneItemList.length,
                                          itemBuilder: (context, index) {
                                            ListfortyoneItemModel model =
                                                controller.k2ModelObj.value
                                                        .listfortyoneItemList[
                                                    index];
                                            return GestureDetector(
                                              onTap: () {
                                                toK8Screen();
                                              },
                                              child: ListfortyoneItemWidget(
                                                  model),
                                            );
                                          })))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 8, top: 40),
                                      child: Text("lbl16".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRomanSemiBold18))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(121),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(left: 8, top: 15),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: controller.k2ModelObj.value
                                              .listfiftyoneItemList.length,
                                          itemBuilder: (context, index) {
                                            ListfiftyoneItemModel model =
                                                controller.k2ModelObj.value
                                                        .listfiftyoneItemList[
                                                    index];
                                            return ListfiftyoneItemWidget(
                                                model);
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    toK3Screen();
                                  },
                                  child: Padding(
                                      padding: getPadding(
                                          left: 8, top: 39, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("lbl17".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold18)),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: toK4Screen,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                      padding: getPadding(top: 8),
                                                      child: Text("lbl7".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRomanBold13)),CustomImageView(
                                                      svgPath:
                                                      ImageConstant.imgArrowright,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          top: 6, bottom: 1))
                                                ],
                                              ),
                                            ),

                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(211),
                                      child: Obx(() => ListView.separated(
                                        physics: PageScrollPhysics(),
                                          padding: getPadding(left: 8, top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: controller.k2ModelObj.value
                                              .listfiftyeightItemList.length,
                                          itemBuilder: (context, index) {
                                            ListfiftyeightItemModel model =
                                                controller.k2ModelObj.value
                                                        .listfiftyeightItemList[
                                                    index];
                                            return GestureDetector(
                                              onTap: () => openBottomSheet(),
                                              child: ListfiftyeightItemWidget(
                                                  model),
                                            );
                                          }))))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar()));
  }

  toK3Screen () {
    Get.toNamed(AppRoutes.k3Screen);
  }
  toK4Screen() {
    Get.toNamed(AppRoutes.k4Page);
  }
  toK7Screen() {
    Get.toNamed(AppRoutes.k7Screen);
  }
  toK8Screen() {
    Get.toNamed(AppRoutes.k8Screen);
  }


  openBottomSheet () {
    Get.bottomSheet(K11Screen(),
      ignoreSafeArea: false,
      isScrollControlled: true,);
  }
}
