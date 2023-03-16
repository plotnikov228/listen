import '../controller/k2_controller.dart';
import '../models/k0_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class K0ItemWidget extends StatelessWidget {
  K0ItemWidget(this.k0ItemModelObj);

  K0ItemModel k0ItemModelObj;

  var controller = Get.find<K2Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 12,
        top: 10,
        right: 12,
        bottom: 10,
      ),
      decoration: AppDecoration.outlineBlack90026.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 1,
            ),
            color: ColorConstant.red6004c,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder18,
            ),
            child: Container(
              height: getSize(
                36,
              ),
              width: getSize(
                36,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillRed6004c.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgUserinterface,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 12,
            ),
            child: Text(
              "lbl10".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratRomanSemiBold14Black900,
            ),
          ),
        ],
      ),
    );
  }
}
