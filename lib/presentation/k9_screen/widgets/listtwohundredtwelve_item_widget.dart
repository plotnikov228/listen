import '../controller/k9_controller.dart';
import '../models/listtwohundredtwelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ListtwohundredtwelveItemWidget extends StatelessWidget {
  ListtwohundredtwelveItemWidget(this.listtwohundredtwelveItemModelObj);

  ListtwohundredtwelveItemModel listtwohundredtwelveItemModelObj;

  var controller = Get.find<K9Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          150,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 16,
          top: 3,
          right: 16,
          bottom: 3,
        ),
        decoration: AppDecoration.txtFillGray200.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder12,
        ),
        child: Text(
          "lbl22".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtMontserratRomanSemiBold14Bluegray400,
        ),
      ),
    );
  }
}
