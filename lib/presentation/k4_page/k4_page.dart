import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';

import '../../widgets/custom_search_appbar/controller.dart';
import '../../widgets/custom_search_appbar/custom_search_appbar.dart';
import '../k11_screen/k11_screen.dart';
import '../k4_page/widgets/k2_item_widget.dart';
import '../k4_page/widgets/listninetysix_item_widget.dart';
import 'controller/k4_controller.dart';
import 'models/k2_item_model.dart';
import 'models/k4_model.dart';
import 'models/listninetysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:listenmebaby71_s_application14/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class K4Page extends GetWidget<K4Controller> {

  final controller = Get.put(K4Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar:
            CustomBottomBar(),
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(21),
                leadingWidth: 36,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 1),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl21".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      onTap: onTaptf,
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin: getMargin(left: 16, top: 1, right: 16))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 36),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(120),
                                  width: getHorizontalSize(374),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                            ImageConstant.imgRectangle1,
                                            height: getVerticalSize(120),
                                            width: getHorizontalSize(374),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: getHorizontalSize(178),
                                                margin: getMargin(
                                                    left: 12, top: 15),
                                                child: Text("msg_15".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold20)))
                                      ])),
                              Container(
                                  height: getVerticalSize(53),
                                  child: Obx(() =>
                                      ListView.separated(
                                        physics: PageScrollPhysics(),
                                          padding: getPadding(left: 8, top: 24),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: controller.k4ModelObj.value
                                              .listninetysixItemList.length,
                                          itemBuilder: (context, index) {
                                            ListninetysixItemModel model =
                                            controller.k4ModelObj.value
                                                .listninetysixItemList[index];
                                            return GestureDetector(
                                              onTap: toK6Screen,
                                              child: ListninetysixItemWidget(
                                                  model),
                                            );
                                          }))),
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
                                            child: Text("lbl25".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold18)),
                                        Spacer(),
                                        GestureDetector(
                                          onTap: onTapRowonehundredone,
                                          child: Row(
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text("lbl7".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanBold13)),CustomImageView(
                                                  svgPath:
                                                  ImageConstant.imgArrowright,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin:
                                                  getMargin(top: 5, bottom: 1))
                                            ],
                                          ),
                                        ),

                                      ])),
                              SingleChildScrollView(
                                physics: PageScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 8, top: 14),
                                  child: IntrinsicWidth(
                                      child: GestureDetector(
                                          onTap: () {
                                            openBottomSheet();
                                          },
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    decoration: AppDecoration
                                                        .outlineBlack90026
                                                        .copyWith(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                                    child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                              height:
                                                              getVerticalSize(
                                                                  92),
                                                              width:
                                                              getHorizontalSize(
                                                                  158),
                                                              child: Stack(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                        ImageConstant
                                                                            .img92x158,
                                                                        height: getVerticalSize(
                                                                            92),
                                                                        width: getHorizontalSize(
                                                                            158),
                                                                        radius: BorderRadius
                                                                            .only(
                                                                            topLeft: Radius
                                                                                .circular(
                                                                                getHorizontalSize(
                                                                                    8)),
                                                                            topRight: Radius
                                                                                .circular(
                                                                                getHorizontalSize(
                                                                                    8))),
                                                                        alignment:
                                                                        Alignment
                                                                            .center),
                                                                    Align(
                                                                        alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 5),
                                                                            child: Column(
                                                                                mainAxisSize: MainAxisSize
                                                                                    .min,
                                                                                crossAxisAlignment: CrossAxisAlignment
                                                                                    .start,
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .start,
                                                                                children: [
                                                                                  Container(
                                                                                      width: getHorizontalSize(
                                                                                          53),
                                                                                      padding: getPadding(
                                                                                          left: 12,
                                                                                          top: 3,
                                                                                          right: 12,
                                                                                          bottom: 3),
                                                                                      decoration: AppDecoration
                                                                                          .txtFillRed600
                                                                                          .copyWith(
                                                                                          borderRadius: BorderRadiusStyle
                                                                                              .txtCircleBorder12),
                                                                                      child: Text(
                                                                                          "lbl_15"
                                                                                              .tr,
                                                                                          overflow: TextOverflow
                                                                                              .ellipsis,
                                                                                          textAlign: TextAlign
                                                                                              .left,
                                                                                          style: AppStyle
                                                                                              .txtMontserratRomanSemiBold13)),
                                                                                  Container(
                                                                                      margin: getMargin(
                                                                                          top: 29),
                                                                                      padding: getPadding(
                                                                                          left: 8,
                                                                                          top: 4,
                                                                                          right: 8,
                                                                                          bottom: 4),
                                                                                      decoration: AppDecoration
                                                                                          .fillGray100
                                                                                          .copyWith(
                                                                                          borderRadius: BorderRadiusStyle
                                                                                              .roundedBorder14),
                                                                                      child: Row(
                                                                                          children: [
                                                                                            CustomImageView(
                                                                                                svgPath: ImageConstant
                                                                                                    .imgMenu,
                                                                                                height: getSize(
                                                                                                    16),
                                                                                                width: getSize(
                                                                                                    16),
                                                                                                margin: getMargin(
                                                                                                    top: 1,
                                                                                                    bottom: 1)),
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    left: 15,
                                                                                                    top: 1),
                                                                                                child: Text(
                                                                                                    "lbl_1"
                                                                                                        .tr,
                                                                                                    overflow: TextOverflow
                                                                                                        .ellipsis,
                                                                                                    textAlign: TextAlign
                                                                                                        .left,
                                                                                                    style: AppStyle
                                                                                                        .txtMontserratRomanBold14)),
                                                                                            CustomImageView(
                                                                                                svgPath: ImageConstant
                                                                                                    .imgPlus,
                                                                                                height: getSize(
                                                                                                    16),
                                                                                                width: getSize(
                                                                                                    16),
                                                                                                margin: getMargin(
                                                                                                    left: 17,
                                                                                                    top: 1,
                                                                                                    bottom: 1))
                                                                                          ]))
                                                                                ])))
                                                                  ])),
                                                          Container(
                                                              width:
                                                              getHorizontalSize(
                                                                  130),
                                                              margin: getMargin(
                                                                  left: 6,
                                                                  top: 7),
                                                              child: Text(
                                                                  "msg5".tr,
                                                                  maxLines:
                                                                  null,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtMontserratRomanSemiBold14)),
                                                          Align(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top:
                                                                      16,
                                                                      bottom:
                                                                      8),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                      children: [
                                                                        Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment: MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                  "lbl_145"
                                                                                      .tr,
                                                                                  overflow: TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style: AppStyle
                                                                                      .txtMontserratRomanMedium12
                                                                                      .copyWith(
                                                                                      decoration: TextDecoration
                                                                                          .lineThrough)),
                                                                              Padding(
                                                                                  padding: getPadding(
                                                                                      top: 1),
                                                                                  child: RichText(
                                                                                      text: TextSpan(
                                                                                          children: [
                                                                                            TextSpan(
                                                                                                text: "lbl_110"
                                                                                                    .tr,
                                                                                                style: TextStyle(
                                                                                                    color: ColorConstant
                                                                                                        .red600,
                                                                                                    fontSize: getFontSize(
                                                                                                        16),
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    fontWeight: FontWeight
                                                                                                        .w600)),
                                                                                            TextSpan(
                                                                                                text: " ",
                                                                                                style: TextStyle(
                                                                                                    color: ColorConstant
                                                                                                        .black900,
                                                                                                    fontSize: getFontSize(
                                                                                                        14),
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    fontWeight: FontWeight
                                                                                                        .w600)),
                                                                                            TextSpan(
                                                                                                text: "lbl_500"
                                                                                                    .tr,
                                                                                                style: TextStyle(
                                                                                                    color: ColorConstant
                                                                                                        .blueGray400,
                                                                                                    fontSize: getFontSize(
                                                                                                        13),
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    fontWeight: FontWeight
                                                                                                        .w500))
                                                                                          ]),
                                                                                      textAlign: TextAlign
                                                                                          .left))
                                                                            ]),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                            ImageConstant
                                                                                .imgCartRed600,
                                                                            height: getSize(
                                                                                20),
                                                                            width: getSize(
                                                                                20),
                                                                            margin: getMargin(
                                                                                left: 39,
                                                                                top: 14))
                                                                      ])))
                                                        ])),
                                                Expanded(
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 12),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Container(
                                                                  decoration: AppDecoration
                                                                      .outlineBlack90026
                                                                      .copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .roundedBorder8),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                            getVerticalSize(
                                                                                92),
                                                                            width: getHorizontalSize(
                                                                                158),
                                                                            child: Stack(
                                                                                alignment: Alignment
                                                                                    .topLeft,
                                                                                children: [
                                                                                  CustomImageView(
                                                                                      imagePath: ImageConstant
                                                                                          .img92x158,
                                                                                      height: getVerticalSize(
                                                                                          92),
                                                                                      width: getHorizontalSize(
                                                                                          158),
                                                                                      radius: BorderRadius
                                                                                          .only(
                                                                                          topLeft: Radius
                                                                                              .circular(
                                                                                              getHorizontalSize(
                                                                                                  8)),
                                                                                          topRight: Radius
                                                                                              .circular(
                                                                                              getHorizontalSize(
                                                                                                  8))),
                                                                                      alignment: Alignment
                                                                                          .center),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .topLeft,
                                                                                      child: Container(
                                                                                          width: getHorizontalSize(
                                                                                              53),
                                                                                          margin: getMargin(
                                                                                              left: 5,
                                                                                              top: 5),
                                                                                          padding: getPadding(
                                                                                              left: 12,
                                                                                              top: 3,
                                                                                              right: 12,
                                                                                              bottom: 3),
                                                                                          decoration: AppDecoration
                                                                                              .txtFillRed600
                                                                                              .copyWith(
                                                                                              borderRadius: BorderRadiusStyle
                                                                                                  .txtCircleBorder12),
                                                                                          child: Text(
                                                                                              "lbl_15"
                                                                                                  .tr,
                                                                                              overflow: TextOverflow
                                                                                                  .ellipsis,
                                                                                              textAlign: TextAlign
                                                                                                  .left,
                                                                                              style: AppStyle
                                                                                                  .txtMontserratRomanSemiBold13)))
                                                                                ])),
                                                                        Container(
                                                                            width:
                                                                            getHorizontalSize(
                                                                                130),
                                                                            margin: getMargin(
                                                                                left: 6,
                                                                                top: 7),
                                                                            child: Text(
                                                                                "msg5"
                                                                                    .tr,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign
                                                                                    .left,
                                                                                style: AppStyle
                                                                                    .txtMontserratRomanSemiBold14)),
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .center,
                                                                            child: Padding(
                                                                                padding: getPadding(
                                                                                    top: 16,
                                                                                    bottom: 8),
                                                                                child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment
                                                                                        .center,
                                                                                    children: [
                                                                                      Column(
                                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                                              .start,
                                                                                          mainAxisAlignment: MainAxisAlignment
                                                                                              .start,
                                                                                          children: [
                                                                                            Text(
                                                                                                "lbl_145"
                                                                                                    .tr,
                                                                                                overflow: TextOverflow
                                                                                                    .ellipsis,
                                                                                                textAlign: TextAlign
                                                                                                    .left,
                                                                                                style: AppStyle
                                                                                                    .txtMontserratRomanMedium12
                                                                                                    .copyWith(
                                                                                                    decoration: TextDecoration
                                                                                                        .lineThrough)),
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    top: 1),
                                                                                                child: RichText(
                                                                                                    text: TextSpan(
                                                                                                        children: [
                                                                                                          TextSpan(
                                                                                                              text: "lbl_110"
                                                                                                                  .tr,
                                                                                                              style: TextStyle(
                                                                                                                  color: ColorConstant
                                                                                                                      .red600,
                                                                                                                  fontSize: getFontSize(
                                                                                                                      16),
                                                                                                                  fontFamily: 'Montserrat',
                                                                                                                  fontWeight: FontWeight
                                                                                                                      .w600)),
                                                                                                          TextSpan(
                                                                                                              text: " ",
                                                                                                              style: TextStyle(
                                                                                                                  color: ColorConstant
                                                                                                                      .black900,
                                                                                                                  fontSize: getFontSize(
                                                                                                                      14),
                                                                                                                  fontFamily: 'Montserrat',
                                                                                                                  fontWeight: FontWeight
                                                                                                                      .w600)),
                                                                                                          TextSpan(
                                                                                                              text: "lbl_500"
                                                                                                                  .tr,
                                                                                                              style: TextStyle(
                                                                                                                  color: ColorConstant
                                                                                                                      .blueGray400,
                                                                                                                  fontSize: getFontSize(
                                                                                                                      13),
                                                                                                                  fontFamily: 'Montserrat',
                                                                                                                  fontWeight: FontWeight
                                                                                                                      .w500))
                                                                                                        ]),
                                                                                                    textAlign: TextAlign
                                                                                                        .left))
                                                                                          ]),
                                                                                      CustomImageView(
                                                                                          svgPath: ImageConstant
                                                                                              .imgCart,
                                                                                          height: getSize(
                                                                                              20),
                                                                                          width: getSize(
                                                                                              20),
                                                                                          margin: getMargin(
                                                                                              left: 39,
                                                                                              top: 14))
                                                                                    ])))
                                                                      ])),
                                                              Container(
                                                                  margin:
                                                                  getMargin(
                                                                      left:
                                                                      12),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack90026
                                                                      .copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .roundedBorder8),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                            getVerticalSize(
                                                                                92),
                                                                            width: getHorizontalSize(
                                                                                158),
                                                                            child: Stack(
                                                                                alignment: Alignment
                                                                                    .topLeft,
                                                                                children: [
                                                                                  CustomImageView(
                                                                                      imagePath: ImageConstant
                                                                                          .img92x158,
                                                                                      height: getVerticalSize(
                                                                                          92),
                                                                                      width: getHorizontalSize(
                                                                                          158),
                                                                                      radius: BorderRadius
                                                                                          .only(
                                                                                          topLeft: Radius
                                                                                              .circular(
                                                                                              getHorizontalSize(
                                                                                                  8)),
                                                                                          topRight: Radius
                                                                                              .circular(
                                                                                              getHorizontalSize(
                                                                                                  8))),
                                                                                      alignment: Alignment
                                                                                          .center),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .topLeft,
                                                                                      child: Container(
                                                                                          width: getHorizontalSize(
                                                                                              53),
                                                                                          margin: getMargin(
                                                                                              left: 5,
                                                                                              top: 5),
                                                                                          padding: getPadding(
                                                                                              left: 12,
                                                                                              top: 3,
                                                                                              right: 12,
                                                                                              bottom: 3),
                                                                                          decoration: AppDecoration
                                                                                              .txtFillRed600
                                                                                              .copyWith(
                                                                                              borderRadius: BorderRadiusStyle
                                                                                                  .txtCircleBorder12),
                                                                                          child: Text(
                                                                                              "lbl_15"
                                                                                                  .tr,
                                                                                              overflow: TextOverflow
                                                                                                  .ellipsis,
                                                                                              textAlign: TextAlign
                                                                                                  .left,
                                                                                              style: AppStyle
                                                                                                  .txtMontserratRomanSemiBold13)))
                                                                                ])),
                                                                        Container(
                                                                            width:
                                                                            getHorizontalSize(
                                                                                146),
                                                                            margin: getMargin(
                                                                                top: 7),
                                                                            child: Text(
                                                                                "msg5"
                                                                                    .tr,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign
                                                                                    .left,
                                                                                style: AppStyle
                                                                                    .txtMontserratRomanSemiBold14)),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(
                                                                                top: 18,
                                                                                bottom: 8),
                                                                            child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .center,
                                                                                children: [
                                                                                  Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment
                                                                                          .start,
                                                                                      mainAxisAlignment: MainAxisAlignment
                                                                                          .start,
                                                                                      children: [
                                                                                        Text(
                                                                                            "lbl_145"
                                                                                                .tr,
                                                                                            overflow: TextOverflow
                                                                                                .ellipsis,
                                                                                            textAlign: TextAlign
                                                                                                .left,
                                                                                            style: AppStyle
                                                                                                .txtMontserratRomanMedium12
                                                                                                .copyWith(
                                                                                                decoration: TextDecoration
                                                                                                    .lineThrough)),
                                                                                        Padding(
                                                                                            padding: getPadding(
                                                                                                top: 1),
                                                                                            child: RichText(
                                                                                                text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                          text: "lbl_110"
                                                                                                              .tr,
                                                                                                          style: TextStyle(
                                                                                                              color: ColorConstant
                                                                                                                  .red600,
                                                                                                              fontSize: getFontSize(
                                                                                                                  16),
                                                                                                              fontFamily: 'Montserrat',
                                                                                                              fontWeight: FontWeight
                                                                                                                  .w600)),
                                                                                                      TextSpan(
                                                                                                          text: " ",
                                                                                                          style: TextStyle(
                                                                                                              color: ColorConstant
                                                                                                                  .black900,
                                                                                                              fontSize: getFontSize(
                                                                                                                  14),
                                                                                                              fontFamily: 'Montserrat',
                                                                                                              fontWeight: FontWeight
                                                                                                                  .w600)),
                                                                                                      TextSpan(
                                                                                                          text: "lbl_500"
                                                                                                              .tr,
                                                                                                          style: TextStyle(
                                                                                                              color: ColorConstant
                                                                                                                  .blueGray400,
                                                                                                              fontSize: getFontSize(
                                                                                                                  13),
                                                                                                              fontFamily: 'Montserrat',
                                                                                                              fontWeight: FontWeight
                                                                                                                  .w500))
                                                                                                    ]),
                                                                                                textAlign: TextAlign
                                                                                                    .left))
                                                                                      ]),
                                                                                  CustomImageView(
                                                                                      svgPath: ImageConstant
                                                                                          .imgCart,
                                                                                      height: getSize(
                                                                                          20),
                                                                                      width: getSize(
                                                                                          20),
                                                                                      margin: getMargin(
                                                                                          left: 39,
                                                                                          top: 14))
                                                                                ]))
                                                                      ]))
                                                            ])))
                                              ])))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 8, top: 41),
                                      child: Text("lbl22".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRomanSemiBold18))),
                              Padding(
                                  padding:
                                  getPadding(left: 8, top: 14, right: 16),
                                  child: Obx(() =>
                                      GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                              getVerticalSize(198),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                              getHorizontalSize(12),
                                              crossAxisSpacing:
                                              getHorizontalSize(12)),
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: controller
                                              .k4ModelObj.value.k2ItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            K2ItemModel model = controller
                                                .k4ModelObj.value
                                                .k2ItemList[index];
                                            return GestureDetector(
                                                onTap: openBottomSheet,
                                                child: K2ItemWidget(model));
                                          }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 16, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                      onTap: toK6Screen,
                                              child: Padding(
                                                  padding: getPadding(bottom: 3),
                                                  child: Text("lbl26".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanBold16Red600)),
                                            ),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightRed600,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ])))
                            ]))))));
  }

  onTapRowonehundredone() {
    Get.toNamed(AppRoutes.k3Screen);
  }

  onTapArrowleft1() {
    Get.back();
  }

  toK6Screen() {
    Get.toNamed(AppRoutes.k6Screen);
  }


  onTaptf() {
    Get.dialog(CustomSearchAppBar("lbl21".tr, CustomSearchAppBarController()));
  }

  openBottomSheet() {
    Get.bottomSheet(K11Screen(),
      isScrollControlled: true,
    ignoreSafeArea: false);
  }
}
