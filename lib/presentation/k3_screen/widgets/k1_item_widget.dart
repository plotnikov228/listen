import '../controller/k3_controller.dart';
import '../models/k1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class K1ItemWidget extends StatelessWidget {
  K1ItemWidget(this.k1ItemModelObj);

  K1ItemModel k1ItemModelObj;

  var controller = Get.find<K3Controller>();

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
