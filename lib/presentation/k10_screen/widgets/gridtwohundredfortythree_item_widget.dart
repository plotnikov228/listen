import '../controller/k10_controller.dart';
import '../models/gridtwohundredfortythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_button.dart';

// ignore: must_be_immutable
class GridtwohundredfortythreeItemWidget extends StatelessWidget {
  GridtwohundredfortythreeItemWidget(this.gridtwohundredfortythreeItemModelObj);

  GridtwohundredfortythreeItemModel gridtwohundredfortythreeItemModelObj;

  var controller = Get.find<K10Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack90026.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              92,
            ),
            width: getHorizontalSize(
              173,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img92x158,
                  height: getVerticalSize(
                    92,
                  ),
                  width: getHorizontalSize(
                    173,
                  ),
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomButton(
                  height: getVerticalSize(
                    24,
                  ),
                  width: getHorizontalSize(
                    53,
                  ),
                  text: "lbl_15".tr,
                  margin: getMargin(
                    left: 5,
                    top: 5,
                  ),
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              130,
            ),
            margin: getMargin(
              left: 6,
              top: 7,
            ),
            child: Text(
              "msg5".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratRomanSemiBold14,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 16,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_145".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRomanMedium12.copyWith(
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
                  CustomImageView(
                    svgPath: ImageConstant.imgCart,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    margin: getMargin(
                      left: 54,
                      top: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
