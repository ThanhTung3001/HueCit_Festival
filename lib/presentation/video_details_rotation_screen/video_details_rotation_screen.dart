import 'controller/video_details_rotation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

class VideoDetailsRotationScreen
    extends GetWidget<VideoDetailsRotationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                imagePath: ImageConstant.imgRectangle2668x375,
                height: getVerticalSize(
                  668.00,
                ),
                width: getHorizontalSize(
                  375.00,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: getMargin(
                    right: 271,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.gradientBlack90099Black90000,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgPlayarrowfill,
                            height: getSize(
                              36.00,
                            ),
                            width: getSize(
                              36.00,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 13,
                            ),
                            child: Text(
                              "lbl_00_01".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtSFProMedium14WhiteA700.copyWith(
                                height: 1.21,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Text(
                                "lbl2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProMedium14WhiteA700cc
                                    .copyWith(
                                  height: 1.21,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "lbl_03_54".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProMedium14WhiteA700.copyWith(
                              height: 1.21,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 464,
                            ),
                            child: Text(
                              "lbl_1x".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtSFProMedium14WhiteA700.copyWith(
                                height: 1.21,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgProgess,
                        height: getVerticalSize(
                          636.00,
                        ),
                        width: getHorizontalSize(
                          10.00,
                        ),
                        margin: getMargin(
                          left: 4,
                        ),
                      ),
                    ],
                  ),
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
                  decoration: AppDecoration.gradientBlack90099Black900001,
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
                                      text: "msg_h_i_ua_ghe_truy_n5".tr,
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
                                      text: "lbl3".tr,
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
                                        fontWeight: FontWeight.w510,
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
                                left: 2,
                                bottom: 341,
                              ),
                              child: Text(
                                "msg_h_i_ua_ghe_truy_n".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtSFProBold16WhiteA700.copyWith(
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
                          top: 7,
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
      ),
    );
  }
}
