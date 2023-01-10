import 'controller/picture_details_rotation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

class PictureDetailsRotationScreen
    extends GetWidget<PictureDetailsRotationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black90001,
      body: Container(
        height: size.height,
        width: size.width,
        padding: getPadding(
          top: 72,
          bottom: 72,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle2,
              height: getVerticalSize(
                668.00,
              ),
              width: getHorizontalSize(
                375.00,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOverflowmenu,
              height: getVerticalSize(
                44.00,
              ),
              width: getHorizontalSize(
                6.00,
              ),
              alignment: Alignment.centerLeft,
              margin: getMargin(
                left: 34,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: getHorizontalSize(
                  104.00,
                ),
                padding: getPadding(
                  left: 17,
                  top: 16,
                  right: 17,
                  bottom: 16,
                ),
                decoration: AppDecoration.gradientBlack9007fBlack90000,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowup,
                      height: getSize(
                        16.00,
                      ),
                      width: getSize(
                        16.00,
                      ),
                      margin: getMargin(
                        right: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              17.00,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_l_th_ng_h_ng4".tr,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w400,
                                      height: 1.43,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_xem_th_m".tr,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                      height: 1.43,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              bottom: 447,
                            ),
                            child: Text(
                              "lbl_l_t_x_t_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProBold16WhiteA700.copyWith(
                                height: 1.25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        20.00,
                      ),
                      margin: getMargin(
                        top: 8,
                      ),
                      padding: getPadding(
                        left: 3,
                        top: 6,
                        right: 3,
                        bottom: 6,
                      ),
                      decoration: AppDecoration.txtFillBlack9006601.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder10,
                      ),
                      child: Text(
                        "lbl_1_12".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProMedium12WhiteA700.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
