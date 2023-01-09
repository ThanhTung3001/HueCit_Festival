import 'controller/library_video_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/custom_button.dart';

class LibraryVideoDetailsScreen
    extends GetWidget<LibraryVideoDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft24x24,
                          height: getSize(24.00),
                          width: getSize(24.00),
                          margin: getMargin(left: 16, top: 12),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgAnh1,
                          height: getVerticalSize(210.00),
                          width: getHorizontalSize(375.00),
                          margin: getMargin(top: 221),
                          onTap: () {
                            onTapImgRectangleTwo();
                          }),
                      CustomButton(
                          height: 28,
                          width: 137,
                          text: "lbl_xoay_m_n_h_nh".tr,
                          margin: getMargin(top: 16),
                          prefixWidget: Container(
                              margin: getMargin(right: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgForward)),
                          onTap: onTapXoaymnhnh,
                          alignment: Alignment.center),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 99),
                          padding: getPadding(top: 18, bottom: 18),
                          decoration:
                              AppDecoration.gradientBlack90000Black900b201,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("msg_h_i_ua_ghe_truy_n".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16WhiteA700
                                            .copyWith(height: 1.25))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: getHorizontalSize(343.00),
                                        margin: getMargin(top: 8),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "msg_h_i_ua_ghe_truy_n3"
                                                      .tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700Cc,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700Cc,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43)),
                                              TextSpan(
                                                  text: "lbl_h_i".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700Cc,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43)),
                                              TextSpan(
                                                  text: "lbl".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700Cc,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43)),
                                              TextSpan(
                                                  text: "  ".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700Cc,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43)),
                                              TextSpan(
                                                  text: "lbl_xem_th_m".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'SF Pro',
                                                      fontWeight:
                                                          FontWeight.w510,
                                                      height: 1.43))
                                            ]),
                                            textAlign: TextAlign.left))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFrame14,
                                    height: getVerticalSize(6.00),
                                    width: getHorizontalSize(375.00),
                                    margin: getMargin(top: 10, bottom: 13))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgRectangleTwo() {
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }

  onTapXoaymnhnh() {
    Get.toNamed(AppRoutes.videoDetailsRotationScreen);
  }
}
