import '../controller/k2_controller.dart';
import '../models/listfiftyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListfiftyoneItemWidget extends StatelessWidget {
  ListfiftyoneItemWidget(this.listfiftyoneItemModelObj);

  ListfiftyoneItemModel listfiftyoneItemModelObj;

  var controller = Get.find<K2Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            margin: getMargin(
              right: 12,
            ),
            padding: getPadding(
              left: 12,
              top: 8,
              right: 12,
              bottom: 8,
            ),
            decoration: AppDecoration.outlineBlack90026.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 36,
                  width: 36,
                  margin: getMargin(
                    top: 3,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgUserinterface,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    72,
                  ),
                  margin: getMargin(
                    top: 12,
                  ),
                  child: Text(
                    "msg7".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanSemiBold14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
