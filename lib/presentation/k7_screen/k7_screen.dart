import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k7_screen/widgets/k4_item_widget.dart';
import 'controller/k7_controller.dart';
import 'models/k4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';

class K7Screen extends GetWidget<K7Controller> {
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
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl27".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      onTap: () => onTapSearch(),
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  child: Container(
                      width: getHorizontalSize(358),
                      margin: getMargin(left: 16, top: 21, right: 16),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(231),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(12),
                                        crossAxisSpacing: getHorizontalSize(12)),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    controller.k7ModelObj.value.k4ItemList.length,
                                itemBuilder: (context, index) {
                                  K4ItemModel model = controller
                                      .k7ModelObj.value.k4ItemList[index];
                                  return GestureDetector(
                                      onTap: () {
                                        toK8();
                                      },
                                      child: K4ItemWidget(model));
                                }))
                          ]))),
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

  onTapArrowleft3() {
    Get.back();
  }

  toK8() {
    Get.toNamed(AppRoutes.k8Screen);
  }

  onTapSearch() {
    Get.dialog(CustomSearchAppBar("lbl27".tr, CustomSearchAppBarController()));
  }
}
