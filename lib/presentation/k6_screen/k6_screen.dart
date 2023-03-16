import 'package:listenmebaby71_s_application14/presentation/k11_screen/k11_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../../widgets/custom_search_appbar/controller.dart';
import '../k6_screen/widgets/k3_item_widget.dart';
import 'controller/k6_controller.dart';
import 'models/k3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';

class K6Screen extends GetWidget<K6Controller> {
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
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl22".tr),
                actions: [
                  AppbarImage(
                    onTap: () => Get.dialog(CustomSearchAppBar("lbl22".tr, CustomSearchAppBarController())),
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 21, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(198),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(12),
                        crossAxisSpacing: getHorizontalSize(12)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.k6ModelObj.value.k3ItemList.length,
                    itemBuilder: (context, index) {
                      K3ItemModel model =
                          controller.k6ModelObj.value.k3ItemList[index];
                      return GestureDetector(
                        onTap: openBottomSheet,
                          child: K3ItemWidget(model));
                    }))),
            bottomNavigationBar:
                CustomBottomBar()));
  }

  onTapArrowleft2() {
    Get.back();
  }

  openBottomSheet() {
    Get.bottomSheet(K11Screen(),
      isScrollControlled: true,
    ignoreSafeArea: false);
  }
}
