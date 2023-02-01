import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

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
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
          // top: 4,
          // left: 8,
          // right: 8,
          // bottom: 4,
        );
      default:
        return getPadding(
          top: 4,
          right: 4,
          bottom: 4,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillAmber40033:
        return ColorConstant.amber40033;
      default:
        return null;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineRed900:
        return BorderSide(
          color: ColorConstant.red900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillAmber40033:
        return null;
      default:
        return BorderSide(
          color: ColorConstant.whiteA7004c,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SFProMedium16:
        return TextStyle(
          color: ColorConstant.red900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.SFProMedium12:
        return TextStyle(
          color: ColorConstant.amberA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder12,
}

enum ButtonPadding {
  PaddingT4,
  PaddingAll14,
  PaddingAll4,
}

enum ButtonVariant {
  OutlineWhiteA7004c,
  OutlineRed900,
  FillAmber40033,
}

enum ButtonFontStyle {
  SFProRegular14,
  SFProMedium16,
  SFProMedium12,
}
