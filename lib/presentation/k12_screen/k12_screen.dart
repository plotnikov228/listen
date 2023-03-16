import 'package:listenmebaby71_s_application14/presentation/k23_bottomsheet/controller/k23_controller.dart';
import 'package:listenmebaby71_s_application14/presentation/k23_bottomsheet/k23_bottomsheet.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/custom_search_appbar.dart';

import '../k12_screen/widgets/k5_item_widget.dart';
import '../k20_screen/k20_screen.dart';
import 'controller/k12_controller.dart';
import 'models/k5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';
import 'package:listenmebaby71_s_application14/presentation/k13_bottomsheet/k13_bottomsheet.dart';
import 'package:listenmebaby71_s_application14/presentation/k13_bottomsheet/controller/k13_controller.dart';

class K12Screen extends GetWidget<K12Controller> {
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
                    onTap: onTapArrowleft8),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl19".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      onTap: () => Get.dialog(CustomSearchAppBar("lbl19".tr, CustomSearchAppBarController())),
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(12));
                          },
                          itemCount:
                              controller.k12ModelObj.value.k5ItemList.length,
                          itemBuilder: (context, index) {
                            K5ItemModel model =
                                controller.k12ModelObj.value.k5ItemList[index];
                            return K5ItemWidget(model);
                          })),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 1),
                          child: Text("msg15".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanMedium12))
                    ])),
            bottomNavigationBar: Container(
                width: double.maxFinite,
                padding: getPadding(left: 32, top: 16, right: 32, bottom: 16),
                decoration: AppDecoration.outlineBlack900261
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 2, bottom: 1),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl37".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanMedium12),
                                Text("lbl_440".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanSemiBold24)
                              ])),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(140),
                          text: "lbl38".tr,
                          shape: ButtonShape.CircleBorder22,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.MontserratRomanBold16,
                          onTap: onTaptf)
                    ]))));
  }

  onTaptf() {
    Get.bottomSheet(
      K13Bottomsheet(
        Get.put(
          K13Controller(),
        ),
      ),
      ignoreSafeArea: false,
      isScrollControlled: true,
    );
  }

  onTapArrowleft8() {
    Get.back();
  }
}
