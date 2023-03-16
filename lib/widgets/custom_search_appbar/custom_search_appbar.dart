import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:listenmebaby71_s_application14/core/utils/image_constant.dart';
import 'package:listenmebaby71_s_application14/core/utils/size_utils.dart';
import 'package:listenmebaby71_s_application14/presentation/k16_screen/controller/k16_controller.dart';
import 'package:listenmebaby71_s_application14/theme/app_decoration.dart';
import 'package:listenmebaby71_s_application14/theme/app_style.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_image_view.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_appbar/controller.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_search_view.dart';

import '../../routes/app_routes.dart';

class CustomSearchAppBar extends StatelessWidget {
  final String subtitle;
  final CustomSearchAppBarController controller;
  const CustomSearchAppBar(this.subtitle, this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
          alignment: Alignment.center,
          child: Container(
              decoration: AppDecoration.fillBlack900b2,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                        height: getVerticalSize(46),
                        leadingWidth: 36,
                        leading: AppbarImage(
                            height: getSize(20),
                            width: getSize(20),
                            svgPath: ImageConstant.imgArrowleft,
                            margin: getMargin(
                                left: 16, top: 13, bottom: 13),
                            onTap: onTapArrowleft11),
                        centerTitle: true,
                        title: AppbarSubtitle1(text: subtitle),
                        actions: [
                          AppbarImage(
                              height: getSize(20),
                              width: getSize(20),
                              onTap: () => Get.toNamed(AppRoutes.k3Screen),
                              svgPath:
                              ImageConstant.imgSearchRed600,
                              margin: getMargin(
                                  left: 16,
                                  top: 13,
                                  right: 16,
                                  bottom: 13))
                        ],
                        styleType: Style.bgFillWhiteA70001),
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            margin: getMargin(bottom: 634),
                            padding: getPadding(
                                left: 16,
                                top: 15,
                                right: 16,
                                bottom: 15),
                            decoration: AppDecoration
                                .outlineBlack900261
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .customBorderBL20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: CustomSearchView(
                                        focusNode: FocusNode(),
                                        controller: controller.threeHundredFiftyController,
                                        hintText: "lbl5".tr,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 12,
                                                top: 12,
                                                right: 8,
                                                bottom: 12),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgSearch)),
                                        prefixConstraints:
                                        BoxConstraints(
                                            maxHeight:
                                            getVerticalSize(
                                                44))),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtThreeHundredFiftyOne();
                                      },
                                      child: Padding(
                                          padding:
                                          getPadding(top: 24),
                                          child: DefaultTextStyle(
                                            style: AppStyle
                                                .txtMontserratRomanBold16Red600,
                                            child: Text("lbl48".tr,
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanBold16Red600),
                                          )))
                                ])))
                  ]))),
    );


  }
  onTapTxtThreeHundredFiftyOne() {
    Get.toNamed(AppRoutes.k15Screen);
  }

  onTapArrowleft11() {
    Get.back();
  }
}
