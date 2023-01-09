import 'controller/festival_listfestival_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

class FestivalListfestivalCategoryScreen
    extends GetWidget<FestivalListfestivalCategoryController> {
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
                    onTap: onTapArrowleft5),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_danh_s_ch_l_h_i".tr),
                styleType: Style.bgOutlineGray200),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(40.00),
                                  width: getHorizontalSize(359.00),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: IntrinsicWidth(
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  72.00),
                                                          width: size.width,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            72.00),
                                                                        width: size
                                                                            .width,
                                                                        decoration:
                                                                            BoxDecoration(color: ColorConstant.whiteA700))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16),
                                                                        child: Row(children: [
                                                                          Container(
                                                                              width: getHorizontalSize(71.00),
                                                                              padding: getPadding(left: 12, top: 8, right: 12, bottom: 8),
                                                                              decoration: AppDecoration.txtFillRed900.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder20),
                                                                              child: Text("lbl_t_t_c".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProMedium16WhiteA700.copyWith(height: 1.25))),
                                                                          GestureDetector(
                                                                              onTap: () {
                                                                                onTapTxtLhitruynthng2();
                                                                              },
                                                                              child: Container(width: getHorizontalSize(174.00), margin: getMargin(left: 8), padding: getPadding(left: 12, top: 9, right: 12, bottom: 9), decoration: AppDecoration.txtOutlineRed900.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder20), child: Text("msg_l_h_i_truy_n_th_ng2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProMedium16Red900.copyWith(height: 1.25))))
                                                                        ])))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  166.00),
                                                          margin: getMargin(
                                                              left: 45),
                                                          padding: getPadding(
                                                              left: 12,
                                                              top: 8,
                                                              right: 12,
                                                              bottom: 8),
                                                          decoration: AppDecoration
                                                              .txtOutlineRed900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtCircleBorder20),
                                                          child: Text(
                                                              "msg_l_h_i_ng_nh_ngh2"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProMedium16Red900
                                                                  .copyWith(
                                                                      height:
                                                                          1.50)))
                                                    ])))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width: getHorizontalSize(98.00),
                                                padding: getPadding(
                                                    top: 9, bottom: 9),
                                                decoration: AppDecoration
                                                    .txtOutlineRed900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtCircleBorder20),
                                                child: Text(
                                                    "lbl_l_h_i_v_n_h_a2".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProMedium16Red900
                                                        .copyWith(
                                                            height: 1.25))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 36),
                                  child: Row(children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgAnh,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00))),
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Text("lbl_l_t_x_t_c".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16
                                                      .copyWith(height: 1.25))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAnh100x160,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00)),
                                              margin: getMargin(top: 19)),
                                          Container(
                                              width: getHorizontalSize(119.00),
                                              margin: getMargin(top: 11),
                                              child: Text(
                                                  "msg_l_h_i_i_n_h_n".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16
                                                      .copyWith(height: 1.50))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAnh100x163,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00)),
                                              margin: getMargin(top: 17)),
                                          Container(
                                              width: getHorizontalSize(144.00),
                                              margin: getMargin(top: 11),
                                              child: Text(
                                                  "msg_l_h_i_u_v_t_l_ng".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16
                                                      .copyWith(height: 1.50))),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgAnh8,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00)),
                                              margin: getMargin(top: 17)),
                                          Padding(
                                              padding: getPadding(top: 15),
                                              child: Text(
                                                  "msg_h_i_ch_xu_n_gia".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16Black900
                                                      .copyWith(height: 1.25))),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgAnh2,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00)),
                                              margin: getMargin(top: 16)),
                                          Padding(
                                              padding: getPadding(top: 14),
                                              child: Text("lbl_l_h_i_c_u_ng".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16Black900
                                                      .copyWith(height: 1.25)))
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAnh1,
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(163.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(146.00),
                                                  margin: getMargin(top: 11),
                                                  child: Text(
                                                      "msg_h_i_ua_ghe_truy_n"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.50))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAnh2,
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(163.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00)),
                                                  margin: getMargin(top: 15)),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Text(
                                                      "lbl_l_h_i_c_u_ng".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16Black900
                                                          .copyWith(
                                                              height: 1.25))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAnh9,
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(163.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00)),
                                                  margin: getMargin(top: 17)),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text(
                                                      "lbl_l_r_c_h_n".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.25))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAnh10,
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(163.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00)),
                                                  margin: getMargin(top: 19)),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Text(
                                                      "lbl_l_th_ng_ti_u".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.25))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgAnh100x160,
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(163.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00)),
                                                  margin: getMargin(top: 17)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(119.00),
                                                  margin: getMargin(top: 11),
                                                  child: Text(
                                                      "msg_l_h_i_i_n_h_n".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.50)))
                                            ]))
                                  ]))
                            ]))))));
  }

  onTapTxtLhitruynthng2() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}
