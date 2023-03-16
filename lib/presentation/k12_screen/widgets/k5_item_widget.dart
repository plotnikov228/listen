import '../../k20_screen/k20_screen.dart';
import '../controller/k12_controller.dart';
import '../models/k5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

// ignore: must_be_immutable

class K5ItemWidget extends StatefulWidget {
  K5ItemModel k5ItemModelObj;

  K5ItemWidget(this.k5ItemModelObj);

  @override
  State<K5ItemWidget> createState() => _K5ItemWidgetState();
}

class _K5ItemWidgetState extends State<K5ItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<K12Controller>();
    final animation = new Tween(
            begin: const Offset(0.0, 0.0), end: const Offset(-0.2, 0.0))
        .animate(new CurveTween(curve: Curves.decelerate).animate(_controller));

    return GestureDetector(
      onHorizontalDragUpdate: (data) {
        // we can access context.size here
        setState(() {
          _controller.value -= data.primaryDelta! / context.width;
        });
      },
      onHorizontalDragEnd: (data) {
        if (data.primaryVelocity! > 2500)
          _controller
              .animateTo(.0); //close menu on fast swipe in the right direction
        else if (_controller.value >= .5 ||
            data.primaryVelocity! <
                -2500) // fully open if dragged a lot to left or on fast swipe to left
          _controller.animateTo(1.0);
        else // close if none of above
          _controller.animateTo(.0);
      },
      child: Stack(children: [
        Align(
          alignment: Alignment.centerRight,
          child: CustomImageView(
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
        ),
        SlideTransition(position: animation,
          child: GestureDetector(
            onTap: ()=>  Get.bottomSheet(K20Screen(),
                  isScrollControlled: true
              ),
            child: Container(
              decoration: AppDecoration.outlineBlack90026.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img105x120,
                    height: getVerticalSize(
                      105,
                    ),
                    width: getHorizontalSize(
                      120,
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
                      top: 7,
                      right: 8,
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
          ),
        ),
      ]),
    );
  }
}
