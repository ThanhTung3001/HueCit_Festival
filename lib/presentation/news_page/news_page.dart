import '../news_page/widgets/listanh_item_widget.dart';
import '../news_page/widgets/listthirtyone1_item_widget.dart';
import 'controller/news_controller.dart';
import 'models/listanh_item_model.dart';
import 'models/listthirtyone1_item_model.dart';
import 'models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_title.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NewsPage extends StatelessWidget {
  NewsController controller = Get.put(NewsController(NewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(64.00),
            title: AppbarTitle(
                text: "msg_tin_t_c_s_ki_n".tr,
                margin: getMargin(left: 16),
                onTap: () {}),
            actions: [
              AppbarImage(
                  height: getSize(48.00),
                  width: getSize(48.00),
                  svgPath: ImageConstant.imgSearch,
                  margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
                  onTap: onTapSearch1)
            ],
            styleType: Style.bgFillWhiteA700),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_tin_t_c_s_ki_n2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProBold16
                                        .copyWith(height: 1.25)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtXemthm();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text("lbl_xem_th_m".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProMedium12
                                                .copyWith(height: 1.25))))
                              ]),
                          Container(
                              height: getVerticalSize(193.00),
                              width: getHorizontalSize(343.00),
                              margin: getMargin(top: 16),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAnh80x120,
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
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
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
                                                              MainAxisSize.min,
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
                                                                    "lbl_01".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSFProBold16Red900
                                                                        .copyWith(
                                                                            height:
                                                                                1.25))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
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
                                                                        .copyWith(
                                                                            height:
                                                                                1.20)))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 104),
                                                      child: Text(
                                                          "msg_m_t_s_l_h_i_d_n"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                  itemCount: controller.newsModelObj.value
                                      .listanhItemList.length,
                                  itemBuilder: (context, index) {
                                    ListanhItemModel model = controller
                                        .newsModelObj
                                        .value
                                        .listanhItemList[index];
                                    return ListanhItemWidget(model);
                                  }))),
                          Padding(
                              padding: getPadding(top: 38),
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
                                          onTapTxtXemthm1();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 3),
                                            child: Text("lbl_xem_th_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium12
                                                    .copyWith(height: 1.25))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.newsModelObj.value
                                      .listthirtyone1ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listthirtyone1ItemModel model = controller
                                        .newsModelObj
                                        .value
                                        .listthirtyone1ItemList[index];
                                    return Listthirtyone1ItemWidget(model,
                                        onTapCard: onTapCard);
                                  })))
                        ])))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.huenewsDetailsScreen);
  }

  onTapTxtXemthm() {
    Get.toNamed(AppRoutes.huenewsScreen);
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.huenewsDetailsOneScreen);
  }

  onTapTxtXemthm1() {
    Get.toNamed(AppRoutes.comingfestivalScreen);
  }

  onTapSearch1() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
