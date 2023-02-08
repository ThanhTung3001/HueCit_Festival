import 'package:hue_festival/data/models/festival/festival_model.dart';
import 'package:hue_festival/presentation/festival_page/widgets/listeightytwo1_item_widget.dart';
import 'package:hue_festival/presentation/typicalfestival_screen/typicalfestival_screen.dart';
import 'package:hue_festival/widgets/custom_button.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletons/skeletons.dart';

import '../festival_listfestival_details_screen/festival_listfestival_details_screen.dart';
import 'controller/festival_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_title.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FestivalPage extends GetView<FestivalController> {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
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
        styleType: Style.bgFillWhiteA700,
      ),
      body: Container(
        child: controller.obx(
          (state) => SmartRefresher(
              onRefresh: () {
                // ignore: invalid_use_of_protected_member
                controller.onRefresh();
              },
              enablePullDown: true,
              // enablePullUp: true,
              // header: WaterDropHeader(),
              controller: refreshController,
              child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 0,
                        bottom: 16,
                      ),
                    ),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("msg_l_h_i_ti_u_bi_u".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16
                                            .copyWith(height: 1.25)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtXemthm(state!.item1);
                                        },
                                        child: Container(
                                            child: Text("lbl_xem_th_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium12
                                                    .copyWith(height: 1.25))))
                                  ])),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(top: 16, left: 16, right: 16),
                        child: IntrinsicWidth(
                            //stepHeight:0,
                            child: state!.item1.length > 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                        ...state.item1.map((e) {
                                          var img = [];
                                          if (e.hinhAnh != null) {
                                            img = e.hinhAnh!.split(',');
                                          }
                                          var name = e.tenLeHoi;

                                          return GestureDetector(
                                              onTap: () {
                                                onTapTintuc(e);
                                              },
                                              child: Container(
                                                  margin: getMargin(right: 16),
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
                                                            fit: BoxFit.cover,
                                                            url: AppConstances
                                                                    .ENTRY_POINT +
                                                                img[0],
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
                                                            ),
                                                            child: Text(
                                                                name ?? "",
                                                                maxLines: 2,
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
                                                      ])));
                                        }).toList()
                                      ])
                                : Container(
                                    height: 80,
                                    child: Center(
                                      child: Text("Dữ liệu trống"),
                                    ),
                                  ))),
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
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.item3.length,
                                itemBuilder: (context, index) {
                                  return Listeightytwo1ItemWidget(
                                    onTapLoaihinh: onTapLoaihinh,
                                    numberOf:
                                        state.item3[index].total.toString(),
                                    name: state.item3[index].tenLoai.toString(),
                                  );
                                },
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 1.4,
                                        crossAxisSpacing: 16,
                                        crossAxisCount: 2),
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
                                            padding:
                                                getPadding(top: 1, bottom: 3),
                                            child: Text("lbl_xem_th_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium12
                                                    .copyWith(height: 1.25))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 0, right: 0),
                              child: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.1,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 2,
                                ),
                                children: [
                                  ...state.item2.map((e) {
                                    var img = [];
                                    if (e.hinhAnh != null) {
                                      img = e.hinhAnh!.split(',');
                                    }
                                    var name = e.tenLeHoi;

                                    return GestureDetector(
                                        onTap: () {
                                          onTapTintuc(e);
                                        },
                                        child: Container(
                                            height: 300,
                                            margin: getMargin(right: 16),
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
                                                      fit: BoxFit.cover,
                                                      url: AppConstances
                                                              .ENTRY_POINT +
                                                          img[0],
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
                                                      child: Text(name ?? "",
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProMedium16
                                                              .copyWith(
                                                                  height:
                                                                      1.25)))
                                                ])));
                                  }).toList()
                                ],
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                              )),
                        ],
                      ),
                    )
                  ])),
          onLoading: SkeletonListView(),
          onEmpty: Container(
            height: 300,
            child: Center(
              child: Text("Không có dữ liệu"),
            ),
          ),
          onError: (error) => Center(
            child: CustomButton(
              onTap: () {
                controller.onRefresh();
                refreshController.refreshCompleted();
              },
              text: "Làm mới",
            ),
          ),
        ),
      ),
    );
  }

  onTapTintuc(FestivalModel model) {
    //Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
    // Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
    Get.to(FestivalListfestivalDetailsScreen(
      model: model,
    ));
  }

  onTapLoaihinh() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapTxtXemthm(List<FestivalModel> data) {
    //Get.toNamed(AppRoutes.typicalfestivalScreen);
    Get.to(TypicalfestivalScreen(data: data));
  }

  onTapTxtXemthm1() {
    Get.toNamed(AppRoutes.festivalListfestivalCategoryScreen);
  }

  onTapSearch2() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
