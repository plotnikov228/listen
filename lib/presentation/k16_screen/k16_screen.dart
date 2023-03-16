import '../../widgets/custom_search_appbar/custom_search_appbar.dart';
import '../k16_screen/widgets/listthreehundredforty_item_widget.dart';
import '../k16_screen/widgets/listthreehundredthirtythree_item_widget.dart';
import 'controller/k16_controller.dart';
import 'models/listthreehundredforty_item_model.dart';
import 'models/listthreehundredthirtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_view.dart';

class K16Screen extends GetWidget<K16Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 16, top: 70),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl16".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanSemiBold18),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(121),
                                        child: Obx(() => ListView.separated(
                                            physics: PageScrollPhysics(),
                                            padding: getPadding(top: 15),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(12));
                                            },
                                            itemCount: controller
                                                .k16ModelObj
                                                .value
                                                .listthreehundredthirtythreeItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListthreehundredthirtythreeItemModel
                                                  model = controller
                                                          .k16ModelObj
                                                          .value
                                                          .listthreehundredthirtythreeItemList[
                                                      index];
                                              return ListthreehundredthirtythreeItemWidget(
                                                  model);
                                            })))),
                                Padding(
                                    padding: getPadding(top: 41, right: 16),
                                    child: Row(
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
                                              child: Text("lbl14".tr,
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
                                                  left: 1, top: 4, bottom: 1))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(244),
                                        child: Obx(() => ListView.separated(
                                            physics: PageScrollPhysics(),
                                            padding: getPadding(top: 14),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(12));
                                            },
                                            itemCount: controller
                                                .k16ModelObj
                                                .value
                                                .listthreehundredfortyItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListthreehundredfortyItemModel
                                                  model = controller
                                                          .k16ModelObj
                                                          .value
                                                          .listthreehundredfortyItemList[
                                                      index];
                                              return ListthreehundredfortyItemWidget(
                                                  model);
                                            }))))
                              ]))),
                ]))));
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapTxtThreeHundredFiftyOne() {
    Get.toNamed(AppRoutes.k15Screen);
  }
}
