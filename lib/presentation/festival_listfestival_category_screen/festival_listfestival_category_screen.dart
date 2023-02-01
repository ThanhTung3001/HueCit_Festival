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
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        //backgroundColor: Colors.white,
        //  backgroundColor: Colors.white,
        appBar: CustomAppBar(
            bottom: PreferredSize(
              child: Container(),
              preferredSize: Size.fromHeight(100.0),
            ),
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
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                    //  margin: getMargin(left: 16, top: 0)
                    margin: getMargin(top: 16),
                    color: Colors.transparent,
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 40,
                              // margin: EdgeInsets.only(left: 16, right: 16),
                              // constraints: BoxConstraints(minHeight: 80),
                              child: ListView(
                                //   itemExtent: 100.0,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: 16,
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        ColorConstant.red900,
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          side: BorderSide(
                                            color: ColorConstant.red900,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Tất cả"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          side: BorderSide(
                                            color: ColorConstant.red900,
                                          ),
                                        ),
                                      ),
                                      side: MaterialStateProperty.all(
                                          BorderSide(
                                              color: ColorConstant.red900,
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Lễ hội truyền thống",
                                      style: TextStyle(
                                        color: ColorConstant.red900,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          side: BorderSide(
                                            color: ColorConstant.red900,
                                          ),
                                        ),
                                      ),
                                      side: MaterialStateProperty.all(
                                          BorderSide(
                                              color: ColorConstant.red900,
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Lễ hội truyền thống",
                                      style: TextStyle(
                                        color: ColorConstant.red900,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                ],
                              )),
                          Container(
                              height: 800,
                              // margin: EdgeInsets.only(bottom: 50),
                              padding: getPadding(top: 16, left: 16),
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
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
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium16
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
                                            child: Text("msg_l_h_i_i_n_h_n".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium16
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
                                                style: AppStyle.txtSFProMedium16
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
                                                overflow: TextOverflow.ellipsis,
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
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProMedium16Black900
                                                    .copyWith(height: 1.25))),
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
                                                height: getVerticalSize(100.00),
                                                width:
                                                    getHorizontalSize(163.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(8.00))),
                                            Container(
                                                width:
                                                    getHorizontalSize(146.00),
                                                margin: getMargin(top: 11),
                                                child: Text(
                                                    "msg_h_i_ua_ghe_truy_n".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProMedium16
                                                        .copyWith(
                                                            height: 1.50))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgAnh2,
                                                height: getVerticalSize(100.00),
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
                                                height: getVerticalSize(100.00),
                                                width:
                                                    getHorizontalSize(163.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(8.00)),
                                                margin: getMargin(top: 17)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text("lbl_l_r_c_h_n".tr,
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
                                                height: getVerticalSize(100.00),
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
                                                imagePath:
                                                    ImageConstant.imgAnh100x160,
                                                height: getVerticalSize(100.00),
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
                                          ])),
                                ]),
                              )),
                        ])))));
  }

  onTapTxtFestivalPagetruynthng2() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}
