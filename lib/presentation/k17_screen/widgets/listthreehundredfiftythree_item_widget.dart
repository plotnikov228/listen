import '../controller/k17_controller.dart';
import '../models/listthreehundredfiftythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ListthreehundredfiftythreeItemWidget extends StatelessWidget {
  ListthreehundredfiftythreeItemWidget(
      this.listthreehundredfiftythreeItemModelObj);

  ListthreehundredfiftythreeItemModel listthreehundredfiftythreeItemModelObj;

  var controller = Get.find<K17Controller>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: AppDecoration.outlineBlack90026.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img105x96,
                height: getVerticalSize(
                  105,
                ),
                width: getHorizontalSize(
                  96,
                ),
                radius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 7,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        130,
                      ),
                      child: Text(
                        "msg5".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRomanSemiBold14,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 16,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_145".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRomanMedium12
                                    .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_110".tr,
                                        style: TextStyle(
                                          color: ColorConstant.red600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_500".tr,
                                        style: TextStyle(
                                          color: ColorConstant.blueGray400,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: getHorizontalSize(
                              107,
                            ),
                            margin: getMargin(
                              left: 24,
                              top: 2,
                            ),
                            padding: getPadding(
                              left: 12,
                              top: 5,
                              right: 12,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgMenu,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 19,
                                  ),
                                  child: Text(
                                    "lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratRomanBold16Red600,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlus,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgTrash,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            left: 16,
            top: 41,
            bottom: 40,
          ),
        ),
      ],
    );
  }
}
