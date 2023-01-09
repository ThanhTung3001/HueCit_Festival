import '../home_page/widgets/listanh_four_item_widget.dart';
import '../home_page/widgets/listeightytwo_item_widget.dart';
import '../home_page/widgets/listthirtyone_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listanh_four_item_model.dart';
import 'models/listeightytwo_item_model.dart';
import 'models/listthirtyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_title.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: Padding(
                    padding: getPadding(left: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarTitle(
                              text: "lbl_xin_ch_o".tr,
                              margin: getMargin(right: 8)),
                          Padding(
                              padding: getPadding(top: 4),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_h_m_nay_19".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black900B2,
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.25)),
                                          TextSpan(
                                              text: "lbl_o".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black900B2,
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.25)),
                                          TextSpan(
                                              text: "lbl_c".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black900B2,
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.25))
                                        ]),
                                        textAlign: TextAlign.left)),
                                AppbarImage(
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    svgPath: ImageConstant.imgRainy1,
                                    margin: getMargin(left: 4))
                              ]))
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(48.00),
                      width: getSize(48.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, top: 4, right: 16, bottom: 4),
                      onTap: onTapSearch)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 26, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_l_h_i_s_ki_n".tr,
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
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(314.00),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listthirtyoneItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListthirtyoneItemModel model =
                                                controller.homeModelObj.value
                                                        .listthirtyoneItemList[
                                                    index];
                                            return ListthirtyoneItemWidget(
                                                model,
                                                onTapCard: onTapCard);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 34),
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
                                      itemCount: controller.homeModelObj.value
                                          .listeightytwoItemList.length,
                                      itemBuilder: (context, index) {
                                        ListeightytwoItemModel model =
                                            controller.homeModelObj.value
                                                .listeightytwoItemList[index];
                                        return ListeightytwoItemWidget(model,
                                            onTapLoaihinh: onTapLoaihinh);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 34, right: 16),
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
                                  padding: getPadding(top: 31, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_tin_ti_u_i_m".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold16
                                                .copyWith(height: 1.25)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtXemthm2();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
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
                                  padding: getPadding(top: 18, right: 21),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.homeModelObj.value
                                          .listanhFourItemList.length,
                                      itemBuilder: (context, index) {
                                        ListanhFourItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .listanhFourItemList[index];
                                        return ListanhFourItemWidget(model,
                                            onTapTintuc: onTapTintuc);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 34, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_b_n_s_ki_n".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold16
                                                .copyWith(height: 1.25)),
                                        Padding(
                                            padding: getPadding(bottom: 4),
                                            child: Text("lbl_xem_chi_ti_t".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium12
                                                    .copyWith(height: 1.25)))
                                      ])),
                              Container(
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(top: 17),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgBando,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(343.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              right: 61),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            39.00),
                                                                    width: getHorizontalSize(
                                                                        38.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            14),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLocation24x24,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              alignment: Alignment.topLeft),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLocation24x24,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              alignment: Alignment.bottomRight)
                                                                        ])),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLocation24x24,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            55,
                                                                        top:
                                                                            29))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgDownload,
                                                                    height:
                                                                        getVerticalSize(
                                                                            48.00),
                                                                    width: getHorizontalSize(
                                                                        24.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            4.00)),
                                                                    margin: getMargin(
                                                                        top: 14,
                                                                        bottom:
                                                                            3)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLocation24x24,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            66,
                                                                        top:
                                                                            41)),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgLocation24x24,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            113,
                                                                        bottom:
                                                                            41))
                                                              ]))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.huenewsDetailsScreen);
  }

  onTapLoaihinh() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapTintuc() {
    Get.toNamed(AppRoutes.huenewsDetailsOneScreen);
    Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
  }

  onTapTxtXemthm() {
    Get.toNamed(AppRoutes.comingfestivalScreen);
  }

  onTapTxtXemthm1() {
    Get.toNamed(AppRoutes.typicalfestivalScreen);
  }

  onTapTxtXemthm2() {
    Get.toNamed(AppRoutes.huenewsScreen);
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
