import 'controller/festival_listfestival_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FestivalListfestivalDetailsScreen
    extends GetWidget<FestivalListfestivalDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: onTapArrowleft7),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_chi_ti_t_l_h_i".tr),
                styleType: Style.bgOutlineGray200),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(193.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgAnh,
                                            height: getVerticalSize(193.00),
                                            width: getHorizontalSize(375.00),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(6.00),
                                                margin: getMargin(bottom: 8),
                                                child: SmoothIndicator(
                                                    offset: 0,
                                                    count: 5,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        spacing: 4,
                                                        activeDotColor:
                                                            ColorConstant
                                                                .amber400,
                                                        dotColor: ColorConstant
                                                            .whiteA7007f,
                                                        dotHeight:
                                                            getVerticalSize(
                                                                6.00),
                                                        dotWidth:
                                                            getHorizontalSize(
                                                                6.00)))))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 15),
                                  child: Text("lbl_l_t_x_t_c".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold20Gray90001
                                          .copyWith(height: 1.20))),
                              Padding(
                                  padding: getPadding(left: 16, top: 29),
                                  child: Text("lbl_gi_i_thi_u".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold14
                                          .copyWith(height: 1.21))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(343.00),
                                      margin: getMargin(top: 8),
                                      child: Text("msg_n_x_t_c_c".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProRegular16
                                              .copyWith(height: 1.50)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Text("msg_h_nh_nh_video".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold14
                                          .copyWith(height: 1.21))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle15,
                                                height: getSize(167.00),
                                                width: getSize(167.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(4.00))),
                                            Padding(
                                                padding: getPadding(left: 8),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  167.00),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle16,
                                                                    height:
                                                                        getSize(
                                                                            79.00),
                                                                    width: getSize(
                                                                        79.00),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(4.00))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle17,
                                                                    height:
                                                                        getSize(
                                                                            79.00),
                                                                    width: getSize(
                                                                        79.00),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(4.00)))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  167.00),
                                                          margin:
                                                              getMargin(top: 8),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle1679x79,
                                                                    height:
                                                                        getSize(
                                                                            79.00),
                                                                    width: getSize(
                                                                        79.00),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(4.00))),
                                                                Container(
                                                                    height:
                                                                        getSize(
                                                                            79.00),
                                                                    width: getSize(
                                                                        79.00),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgRectangle1779x79,
                                                                              height: getSize(79.00),
                                                                              width: getSize(79.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(4.00)),
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text("lbl_102".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProRegular14WhiteA700.copyWith(height: 1.21)))
                                                                        ]))
                                                              ]))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(343.00),
                                      margin: getMargin(top: 7),
                                      child: Text("msg_n_x_t_c_c".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProRegular16
                                              .copyWith(height: 1.50))))
                            ]))))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
