import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k19_page/widgets/k6_item_widget.dart';
import 'controller/k19_controller.dart';
import 'models/k19_model.dart';
import 'models/k6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class K19Page extends StatelessWidget {
  K19Controller controller = Get.put(K19Controller());

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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: onTapArrowleft13),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl45".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      onTap:()=> Get.dialog(CustomSearchAppBar("lbl45".tr, CustomSearchAppBarController())),
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 24, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12));
                              },
                              itemCount: controller
                                  .k19ModelObj.value.k6ItemList.length,
                              itemBuilder: (context, index) {
                                K6ItemModel model = controller
                                    .k19ModelObj.value.k6ItemList[index];
                                return K6ItemWidget(model);
                              }))),
                      Spacer()
                    ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
