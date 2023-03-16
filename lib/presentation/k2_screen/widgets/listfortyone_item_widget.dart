import '../controller/k2_controller.dart';
import '../models/listfortyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ListfortyoneItemWidget extends StatelessWidget {
  ListfortyoneItemWidget(this.listfortyoneItemModelObj);

  ListfortyoneItemModel listfortyoneItemModelObj;

  var controller = Get.find<K2Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          decoration: AppDecoration.outlineBlack90026.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img140x158,
                height: getVerticalSize(
                  140,
                ),
                width: getHorizontalSize(
                  158,
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
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                  top: 8,
                ),
                child: Text(
                  "lbl_z".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRomanSemiBold14Black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                  top: 38,
                  bottom: 10,
                ),
                child: Text(
                  "lbl15".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRomanMedium12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
