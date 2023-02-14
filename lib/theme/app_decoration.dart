import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineAmber200 => BoxDecoration(
        color: ColorConstant.orange50,
        border: Border.all(
          color: ColorConstant.amber200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get gradientBlack9007fBlack90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black9007f,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get gradientBlack90099Black900001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black90099,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get gradientBlack90099Black90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0.5,
          ),
          end: Alignment(
            1,
            0.5,
          ),
          colors: [
            ColorConstant.black90099,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get txtFillBlack9006601 => BoxDecoration(
        color: ColorConstant.black9006601,
      );
  static BoxDecoration get txtFillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        borderRadius: BorderRadiusStyle.roundedBorder12,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(4, 4),
            blurRadius: 16,
            spreadRadius: 0,
          )
        ],
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: ColorConstant.black90001,
      );
  static BoxDecoration get gradientBlack90000Black900b201 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black90000,
            ColorConstant.black900B201,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700b2 => BoxDecoration(
        color: ColorConstant.whiteA700B2,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get txtOutlineRed900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.red900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray2002 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.gray200,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
  );

  static BorderRadius customBorderTL12 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );

  static BorderRadius circleBorder42 = BorderRadius.circular(
    getHorizontalSize(
      42.00,
    ),
  );

  static BorderRadius customBorderTL6 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        6.00,
      ),
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );
}
