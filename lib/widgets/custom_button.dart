import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT11:
        return getPadding(
          left: 11,
          top: 11,
          bottom: 11,
        );
      default:
        return getPadding(
          all: 3,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      default:
        return ColorConstant.red600;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratRomanMedium16:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.MontserratRomanBold16:
        return TextStyle(
          color: ColorConstant.whiteA70001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.MontserratRomanMedium16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA70001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.23,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder12,
  CircleBorder22,
}

enum ButtonPadding {
  PaddingAll3,
  PaddingAll11,
  PaddingT11,
}

enum ButtonVariant {
  FillRed600,
  FillGray100,
}

enum ButtonFontStyle {
  MontserratRomanSemiBold13,
  MontserratRomanMedium16,
  MontserratRomanBold16,
  MontserratRomanMedium16Black900,
}
