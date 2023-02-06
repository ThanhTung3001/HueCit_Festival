import 'package:carousel_slider/carousel_slider.dart';
import 'package:hue_festival/data/models/festival/festival_model.dart';

import 'controller/festival_listfestival_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class FestivalListfestivalDetailsScreen
    extends GetWidget<FestivalListfestivalDetailsController> {
  CarouselController carouselController = CarouselController();
  FestivalListfestivalDetailsScreen({required this.model});
  Rx<int> _current = 0.obs;
  Rx<bool> _readmore = false.obs;
  FestivalModel model;

  @override
  Widget build(BuildContext context) {
    List<String> imgs = model.hinhAnh!.split(",");
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
                onTap: onTapArrowleft7),
            centerTitle: true,
            title: AppbarSubtitle(text: "lbl_chi_ti_t_l_h_i".tr),
            styleType: Style.bgOutlineGray200),
        body: SizedBox(
            width: size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SingleChildScrollView(
                    child: Container(
                      width: size.width,
                      margin: getMargin(bottom: 0),
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
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: 0,
                                      bottom: 0,
                                      child: CarouselSlider(
                                          carouselController:
                                              carouselController,
                                          items: imgs
                                              .map(
                                                (e) => CustomImageView(
                                                    fit: BoxFit.cover,
                                                    url: AppConstances
                                                            .ENTRY_POINT +
                                                        e,
                                                    // height:
                                                    //     getVerticalSize(210.00),
                                                    width: Get.width,
                                                    //   alignment: Alignment.center,
                                                    onTap: () {
                                                      //  onTapImgRectangleTwo();
                                                    }),
                                              )
                                              .toList(),
                                          options: CarouselOptions(
                                              autoPlay: true,
                                              enlargeCenterPage: true,
                                              viewportFraction: 1,
                                              // aspectRatio: 1,
                                              initialPage: 0,
                                              onPageChanged: ((index, reason) {
                                                _current(index);
                                              }))),
                                    ),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Obx((() => Container(
                                            height: getVerticalSize(6.00),
                                            margin: getMargin(bottom: 8),
                                            child: SmoothIndicator(
                                                offset:
                                                    _current.value.toDouble(),
                                                count: imgs.length,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 4,
                                                    activeDotColor:
                                                        ColorConstant.amber400,
                                                    dotColor: ColorConstant
                                                        .whiteA7007f,
                                                    dotHeight:
                                                        getVerticalSize(6.00),
                                                    dotWidth: getHorizontalSize(
                                                        6.00)))))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 16, top: 16),
                              child: Text(model.tenLeHoi ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProBold20Gray90001
                                      .copyWith(height: 1.20))),
                          Padding(
                              padding: getPadding(left: 16, top: 24),
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
                                  child: Text(model.gioiThieu ?? "",
                                      //  maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProRegular16
                                          .copyWith(height: 1.50)))),
                          Obx(() {
                            if (_readmore.isTrue) {
                              return Container(
                                //  height: 1000,
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
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
                                            padding: getPadding(
                                                top: 8, left: 16, right: 16),
                                            child: imgs.length > 0
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                        Expanded(
                                                          child:
                                                              CustomImageView(
                                                            fit: BoxFit.cover,
                                                            url: AppConstances
                                                                    .ENTRY_POINT +
                                                                imgs[0],
                                                            height:
                                                                getSize(167.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        4.00)),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            child: GridView.count(
                                                                physics:
                                                                    NeverScrollableScrollPhysics(),
                                                                mainAxisSpacing:
                                                                    8,
                                                                crossAxisSpacing:
                                                                    8,
                                                                shrinkWrap:
                                                                    true,
                                                                crossAxisCount:
                                                                    2,
                                                                children: [
                                                                  ...imgs.length <
                                                                          4
                                                                      ? (imgs
                                                                          .map(
                                                                          (e) =>
                                                                              CustomImageView(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            url:
                                                                                AppConstances.ENTRY_POINT + e,
                                                                            height:
                                                                                getSize(79.00),
                                                                            width:
                                                                                getSize(79.00),
                                                                            radius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(4.00),
                                                                            ),
                                                                          ),
                                                                        ))
                                                                      : imgs
                                                                          .sublist(
                                                                              0,
                                                                              4)
                                                                          .map(
                                                                            (e) =>
                                                                                CustomImageView(
                                                                              fit: BoxFit.cover,
                                                                              url: AppConstances.ENTRY_POINT + e,
                                                                              height: getSize(79.00),
                                                                              width: getSize(79.00),
                                                                              radius: BorderRadius.circular(
                                                                                getHorizontalSize(4.00),
                                                                              ),
                                                                            ),
                                                                          )
                                                                ]),
                                                          ),
                                                        )
                                                      ])
                                                : Container())),
                                  ],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          })
                        ],
                      ),
                    ),
                  ),
                ),
                Obx(() {
                  if (_readmore.value) {
                    return Container();
                  } else {
                    return Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0.5),
                          ],
                        )),
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 140,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                ColorConstant.red900,
                              ),
                            ),
                            onPressed: () {
                              _readmore(true);
                            },
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.readMore,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Đọc thêm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SF Pro",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                }),
              ],
            )));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
