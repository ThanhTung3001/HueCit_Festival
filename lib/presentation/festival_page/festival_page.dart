import '../festival_page/widgets/listanh_four1_item_widget.dart';
import '../festival_page/widgets/listeightytwo1_item_widget.dart';
import 'controller/festival_controller.dart';
import 'models/festival_model.dart';
import 'models/listanh_four1_item_model.dart';
import 'models/listeightytwo1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_title.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FestivalPage extends StatelessWidget {
  FestivalController controller =
      Get.put(FestivalController(FestivalModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64.00),
                title: AppbarTitle(
                    text: "lbl_l_h_i".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(48.00),
                      width: getSize(48.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
                      onTap: onTapSearch2)
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage193x343,
                                  height: getVerticalSize(193.00),
                                  width: getHorizontalSize(343.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12.00))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("msg_l_h_i_t_nh_th_a".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold16Gray90001
                                          .copyWith(height: 1.25))),
                              Container(
                                  width: getHorizontalSize(338.00),
                                  margin: getMargin(top: 4),
                                  child: Text("msg_kh_ng_n_o_nhi_t".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProRegular16
                                          .copyWith(height: 1.50))),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Text("lbl_xem_th_m".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProMedium12
                                          .copyWith(height: 1.25))),
                              Padding(
                                  padding: getPadding(top: 41, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_l_h_i_ti_u_bi_u".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold16
                                                .copyWith(height: 1.25)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtXemthm();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 3),
                                                child: Text("lbl_xem_th_m".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProMedium12
                                                        .copyWith(
                                                            height: 1.25))))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 17),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapTintuc();
                                            },
                                            child: Container(
                                                margin: getMargin(bottom: 32),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgAnh,
                                                          height:
                                                              getVerticalSize(
                                                                  100.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  160.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      8.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8,
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_l_t_x_t_c"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProMedium16
                                                                  .copyWith(
                                                                      height:
                                                                          1.25)))
                                                    ]))),
                                        Container(
                                            margin:
                                                getMargin(left: 16, bottom: 8),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAnh100x160,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          160.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  8.00))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          119.00),
                                                      margin: getMargin(
                                                          top: 7, bottom: 1),
                                                      child: Text(
                                                          "msg_l_h_i_i_n_h_n"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProMedium16
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))
                                                ])),
                                        Container(
                                            height: getVerticalSize(164.00),
                                            width: getHorizontalSize(160.00),
                                            margin: getMargin(left: 16),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .fillWhiteA700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder3),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            7.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            115),
                                                                    child: Text(
                                                                        "msg_h_i_ua_ghe_truy_n"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFProMedium16
                                                                            .copyWith(height: 1.50)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      164.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      160.00),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder16),
                                                              child: Stack(
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgAnh1,
                                                                        height: getVerticalSize(
                                                                            100.00),
                                                                        width: getHorizontalSize(
                                                                            160.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            8.00)),
                                                                        alignment:
                                                                            Alignment.topCenter)
                                                                  ]))))
                                                ])),
                                        Container(
                                            margin:
                                                getMargin(left: 16, bottom: 24),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAnh2,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          160.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  8.00))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 16),
                                                      child: Text(
                                                          "lbl_l_h_i_c_u_ng".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProMedium16
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 33),
                                  child: Text("msg_lo_i_h_nh_l_h_i".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold16
                                          .copyWith(height: 1.25))),
                              Padding(
                                  padding: getPadding(top: 17, right: 16),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.festivalModelObj
                                          .value.listeightytwo1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listeightytwo1ItemModel model =
                                            controller.festivalModelObj.value
                                                .listeightytwo1ItemList[index];
                                        return Listeightytwo1ItemWidget(model,
                                            onTapLoaihinh: onTapLoaihinh);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 34, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_danh_s_ch_l_h_i".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold16
                                                .copyWith(height: 1.25)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtXemthm1();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 3),
                                                child: Text("lbl_xem_th_m".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProMedium12
                                                        .copyWith(
                                                            height: 1.25))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 17, right: 16),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.festivalModelObj
                                          .value.listanhFour1ItemList.length,
                                      itemBuilder: (context, index) {
                                        ListanhFour1ItemModel model = controller
                                            .festivalModelObj
                                            .value
                                            .listanhFour1ItemList[index];
                                        return ListanhFour1ItemWidget(model,
                                            onTapTintuc: onTapTintuc);
                                      })))
                            ]))))));
  }

  onTapTintuc() {
    Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
    Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
  }

  onTapLoaihinh() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapTxtXemthm() {
    Get.toNamed(AppRoutes.typicalfestivalScreen);
  }

  onTapTxtXemthm1() {
    Get.toNamed(AppRoutes.festivalListfestivalCategoryScreen);
  }

  onTapSearch2() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
