import 'package:carousel_slider/carousel_slider.dart';

import 'controller/library_picture_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LibraryPictureDetailsScreen
    extends GetWidget<LibraryPictureDetailsController> {
  CarouselController carouselController = CarouselController();
  Rx<int> _current = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.black90001,
        body: Container(
            width: size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgArrowleft24x24,
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(left: 16, top: 12),
                      onTap: () {
                        onTapImgArrowleft();
                      }),
                ),
                Positioned.fill(
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(
                          //   height: 64,
                          // ),

                          Container(
                              //  height: getVerticalSize(210.00),
                              width: size.width,
                              //    margin: getMargin(top: 221),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CarouselSlider(
                                        carouselController: carouselController,
                                        items: List.filled(
                                          12,
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle15,
                                              height: getVerticalSize(210.00),
                                              width: getHorizontalSize(375.00),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgRectangleTwo();
                                              }),
                                        ),
                                        options: CarouselOptions(
                                            onPageChanged: ((index, reason) {
                                          _current(index);
                                        }))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            width: getHorizontalSize(197.00),
                                            margin: getMargin(right: 12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          // width:
                                                          //     getHorizontalSize(
                                                          //         41.00),
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 1,
                                                              right: 9,
                                                              bottom: 1),
                                                          decoration: AppDecoration
                                                              .txtFillBlack9006601
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtCircleBorder10),
                                                          child: Obx(() {
                                                            return Text(
                                                                "${_current.toInt() + 1}/12",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProMedium12WhiteA700
                                                                    .copyWith(
                                                                        height:
                                                                            1.25));
                                                          }))),
                                                  Obx(() {
                                                    return Container(
                                                        height: getVerticalSize(
                                                            6.00),
                                                        margin:
                                                            getMargin(top: 164),
                                                        child: SmoothIndicator(
                                                            offset: _current
                                                                .value
                                                                .toDouble(),
                                                            count: 12,
                                                            axisDirection:
                                                                Axis.horizontal,
                                                            effect: ScrollingDotsEffect(
                                                                spacing: 4,
                                                                activeDotColor:
                                                                    ColorConstant
                                                                        .amber400,
                                                                dotColor:
                                                                    ColorConstant
                                                                        .whiteA7007f,
                                                                dotHeight:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                dotWidth:
                                                                    getHorizontalSize(
                                                                        6.00))));
                                                  })
                                                ])))
                                  ])),
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
                        ]),
                  ),
                ),
                Positioned(
                  child: ContentImg(),
                  bottom: 0,
                )
              ],
            )));
  }

  Container ContentImg() {
    return Container(
        width: size.width,
        // margin: getMargin(top: 99),
        padding: getPadding(all: 16),
        decoration: AppDecoration.gradientBlack90000Black900b201,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: getHorizontalSize(340.00),
                  margin: getMargin(top: 10, bottom: 31),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_l_th_ng_h_ng2".tr,
                            style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(14),
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 1.43)),
                        TextSpan(
                            text: "lbl_xem_th_m".tr,
                            style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(14),
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                                height: 1.43))
                      ]),
                      textAlign: TextAlign.left))
            ]));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgRectangleTwo() {
    Get.toNamed(AppRoutes.libraryVideoDetailsScreen);
  }

  onTapXoaymnhnh() {
    Get.toNamed(AppRoutes.pictureDetailsRotationScreen);
  }

  onTapTxtLtxtc() {
    Get.toNamed(AppRoutes.pictureDetailsFullheightScreen);
  }
}
