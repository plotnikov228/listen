import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k3_screen/widgets/k1_item_widget.dart';
import '../k3_screen/widgets/listseventyeight_item_widget.dart';
import '../k3_screen/widgets/listseventyone_item_widget.dart';
import 'controller/k3_controller.dart';
import 'models/k1_item_model.dart';
import 'models/listseventyeight_item_model.dart';
import 'models/listseventyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';

class K3Screen extends GetWidget<K3Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 36,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl9".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      onTap: () => onTaptf(),
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 12))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 16, top: 25),
                                child: Text("lbl16".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanSemiBold18))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(121),
                                child: Obx(() => ListView.separated(
                                  physics: PageScrollPhysics(),
                                    padding: getPadding(left: 16, top: 15),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(12));
                                    },
                                    itemCount: controller.k3ModelObj.value
                                        .listseventyoneItemList.length,
                                    itemBuilder: (context, index) {
                                      ListseventyoneItemModel model = controller
                                          .k3ModelObj
                                          .value
                                          .listseventyoneItemList[index];
                                      return ListseventyoneItemWidget(model);
                                    })))),
                        Padding(
                            padding: getPadding(left: 16, top: 41, right: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("lbl13".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratRomanSemiBold18),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () => toK7Screen(),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("lbl14".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtMontserratRomanBold13)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowright,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                            getMargin(left: 1, top: 4, bottom: 1))
                                      ],
                                    ),
                                  ),

                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(244),
                                child: Obx(() => ListView.separated(
                                    physics: PageScrollPhysics(),
                                    padding: getPadding(left: 16, top: 14),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(12));
                                    },
                                    itemCount: controller.k3ModelObj.value
                                        .listseventyeightItemList.length,
                                    itemBuilder: (context, index) {
                                      ListseventyeightItemModel model = controller
                                          .k3ModelObj
                                          .value
                                          .listseventyeightItemList[index];
                                      return GestureDetector(
                                          onTap: () => toK8Screen(),
                                          child: ListseventyeightItemWidget(model));
                                    })))),
                        Padding(
                            padding: getPadding(left: 16, top: 28, right: 16),
                            child: Obx(() => GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(90),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(12),
                                        crossAxisSpacing: getHorizontalSize(12)),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    controller.k3ModelObj.value.k1ItemList.length,
                                itemBuilder: (context, index) {
                                  K1ItemModel model = controller
                                      .k3ModelObj.value.k1ItemList[index];
                                  return K1ItemWidget(model);
                                })))
                      ])),
            ),
            bottomNavigationBar:
                CustomBottomBar()));
  }

  onTapArrowleft() {
    Get.back();
  }

  toK7Screen() {
    Get.toNamed(AppRoutes.k7Screen);
  }
  toK8Screen() {
    Get.toNamed(AppRoutes.k8Screen);
  }
  toK16Screen() {
    Get.toNamed(AppRoutes.k16Screen);
  }

  onTaptf() {
    Get.dialog(CustomSearchAppBar("lbl9".tr, CustomSearchAppBarController()));
  }
}

