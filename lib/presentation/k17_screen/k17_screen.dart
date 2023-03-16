import '../k17_screen/widgets/listthreehundredfiftythree_item_widget.dart';
import 'controller/k17_controller.dart';
import 'models/listthreehundredfiftythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';

class K17Screen extends GetWidget<K17Controller> {
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
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl19".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15),
                      onTap: onTapSearch1)
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 21, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12));
                              },
                              itemCount: controller.k17ModelObj.value
                                  .listthreehundredfiftythreeItemList.length,
                              itemBuilder: (context, index) {
                                ListthreehundredfiftythreeItemModel model =
                                    controller.k17ModelObj.value
                                            .listthreehundredfiftythreeItemList[
                                        index];
                                return ListthreehundredfiftythreeItemWidget(
                                    model);
                              }))),
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(bottom: 1),
                              child: Text("msg15".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanMedium12)))
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
                          fontStyle: ButtonFontStyle.MontserratRomanBold16)
                    ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }

  onTapSearch1() {
    Get.toNamed(AppRoutes.k16Screen);
  }
}
