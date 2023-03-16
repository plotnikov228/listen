import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillRed6004c => BoxDecoration(
        color: ColorConstant.red6004c,
      );
  static BoxDecoration get fillBlack900b2 => BoxDecoration(
        color: ColorConstant.black900B2,
      );
  static BoxDecoration get outlineBlack900261 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              4,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get outlineBlack90026 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: ColorConstant.red600,
      );
  static BoxDecoration get txtFillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA701 => BoxDecoration(
        color: ColorConstant.whiteA701,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillRed600 => BoxDecoration(
        color: ColorConstant.red600,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius customBorderTL81 = BorderRadius.only(
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
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
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
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius circleBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18,
    ),
  );
}
