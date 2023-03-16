import '../controller/k8_controller.dart';
import '../models/listonehundredeightyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ListonehundredeightyoneItemWidget extends StatelessWidget {
  ListonehundredeightyoneItemWidget(this.listonehundredeightyoneItemModelObj);

  ListonehundredeightyoneItemModel listonehundredeightyoneItemModelObj;

  var controller = Get.find<K8Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          131,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 16,
          top: 4,
          right: 16,
          bottom: 4,
        ),
        decoration: AppDecoration.txtFillGray200.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder12,
        ),
        child: Text(
          "lbl21".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtMontserratRomanSemiBold14Bluegray400,
        ),
      ),
    );
  }
}
