import '../huenews_screen/widgets/huenews_item_widget.dart';
import 'controller/huenews_controller.dart';
import 'models/huenews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

class HuenewsScreen extends GetWidget<HuenewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 40,
            leading: AppbarImage(
                height: getSize(24.00),
                width: getSize(24.00),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 12, bottom: 12),
                onTap: onTapArrowleft),
            centerTitle: true,
            title: AppbarSubtitle(text: "msg_tin_t_c_s_ki_n2".tr),
            styleType: Style.bgOutlineGray200),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        getPadding(left: 16, top: 20, right: 16, bottom: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                             // height: getVerticalSize(193.00),
                             // width: getHorizontalSize(343.00),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAnh80x120,
                                        height: getVerticalSize(193.00),
                                        width: getHorizontalSize(343.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12.00)),
                                        alignment: Alignment.center,
                                        onTap: () {
                                          onTapImgImage();
                                        }),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 8),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width:
                                                          getHorizontalSize(
                                                              45.00),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 5,
                                                          right: 4,
                                                          bottom: 5),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700b2
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize
                                                                  .min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            8),
                                                                child: Text(
                                                                    "lbl_01"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSFProBold16Red900
                                                                        .copyWith(height: 1.25))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_11_2022"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSFProRegular10
                                                                        .copyWith(height: 1.20)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 104),
                                                      child: Text(
                                                          "msg_m_t_s_l_h_i_d_n"
                                                              .tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign
                                                                  .left,
                                                          style: AppStyle
                                                              .txtSFProBold16WhiteA700
                                                              .copyWith(
                                                                  height:
                                                                      1.25)))
                                                ])))
                                  ])),
                          Padding(
                              padding: getPadding(top: 15, right: 5),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.huenewsModelObj
                                      .value.huenewsItemList.length,
                                  itemBuilder: (context, index) {
                                    HuenewsItemModel model = controller
                                        .huenewsModelObj
                                        .value
                                        .huenewsItemList[index];
                                    return HuenewsItemWidget(model);
                                  })))
                        ])))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.huenewsDetailsOneScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
