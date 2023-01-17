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
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(64.00),
            title: AppbarTitle(
              text: "lbl_l_h_i".tr,
              margin: getMargin(left: 16),
              onTap: () {},
            ),
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
                    padding: getPadding(
                      top: 20,
                      bottom: 16,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: getPadding(left: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage193x343,

                                    /// height: getVerticalSize(193.00),
                                    // width: getHorizontalSize(343.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(12.00))),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Text("msg_l_h_i_t_nh_th_a".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16Gray90001
                                            .copyWith(height: 1.25))),
                                Container(
                                    //width: getHorizontalSize(338.00),
                                    margin: getMargin(top: 4),
                                    child: Text("msg_kh_ng_n_o_nhi_t".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProRegular16
                                            .copyWith(height: 1.50))),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 4),
                                    child: Text("lbl_xem_th_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProMedium12
                                            .copyWith(height: 1.25))),
                                Padding(
                                    padding: getPadding(
                                      top: 32,
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              child: Container(
                                                  child: Text("lbl_xem_th_m".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium12
                                                          .copyWith(
                                                              height: 1.25))))
                                        ])),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(top: 16, left: 16, right: 16),
                              child: IntrinsicWidth(
                                  //stepHeight:0,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTintuc();
                                        },
                                        child: Container(
                                            // margin: getMargin(bottom: 32),
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
                                                          .imgAnh,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          160.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  8.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                        top: 8,
                                                      ),
                                                      child: Text(
                                                          "lbl_l_t_x_t_c".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProMedium16
                                                              .copyWith(
                                                                  height:
                                                                      1.25)))
                                                ]))),
                                    Container(
                                        margin: getMargin(left: 16, bottom: 0),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16,
                                        ),
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
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(160.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00))),
                                              Container(
                                                  margin: getMargin(top: 8),
                                                  child: Text(
                                                      "msg_l_h_i_i_n_h_n".tr,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.50)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 16, bottom: 0),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16,
                                        ),
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
                                                  height:
                                                      getVerticalSize(100.00),
                                                  width:
                                                      getHorizontalSize(160.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(8.00))),
                                              Container(
                                                  margin: getMargin(top: 8),
                                                  child: Text(
                                                      "msg_l_h_i_i_n_h_n".tr,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProMedium16
                                                          .copyWith(
                                                              height: 1.50)))
                                            ])),
                                  ]))),
                          Container(
                            padding: getPadding(left: 16, right: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("msg_lo_i_h_nh_l_h_i".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16
                                            .copyWith(height: 1.25))),
                                Container(
                                    padding: getPadding(top: 16),
                                    child: Obx(
                                      () => GridView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .festivalModelObj
                                            .value
                                            .listeightytwo1ItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          Listeightytwo1ItemModel model =
                                              controller.festivalModelObj.value
                                                      .listeightytwo1ItemList[
                                                  index];
                                          return Listeightytwo1ItemWidget(model,
                                              onTapLoaihinh: onTapLoaihinh);
                                        },
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio: 1.4,
                                                crossAxisSpacing: 16,
                                                crossAxisCount: 2),
                                      ),
                                    )),
                                Padding(
                                    padding: getPadding(
                                      top: 16,
                                    ),
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
                                    padding: getPadding(top: 16, right: 0),
                                    child: Obx(() => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller.festivalModelObj
                                            .value.listanhFour1ItemList.length,
                                        itemBuilder: (context, index) {
                                          ListanhFour1ItemModel model =
                                              controller.festivalModelObj.value
                                                  .listanhFour1ItemList[index];
                                          return ListanhFour1ItemWidget(
                                            model,
                                            onTapTintuc: onTapTintuc,
                                          );
                                        })))
                              ],
                            ),
                          )
                        ])))));
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
