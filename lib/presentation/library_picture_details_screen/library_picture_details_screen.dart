import 'package:carousel_slider/carousel_slider.dart';
import 'package:hue_festival/core/utils/file_extension.dart';
import 'package:hue_festival/data/models/media/media_model.dart';
import 'package:readmore/readmore.dart';

import 'controller/library_picture_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LibraryPictureDetailsScreen
    extends GetWidget<LibraryPictureDetailsController> {
  CarouselController carouselController = CarouselController();
  Rx<int> _current = 0.obs;
  MediaModel medias;
  List<MediaModel> listMediaModel = [];
  LibraryPictureDetailsScreen(
      {required this.medias, required this.listMediaModel});

  @override
  Widget build(BuildContext context) {
    //filterImage();

    return Scaffold(
        backgroundColor: ColorConstant.black90001,
        body: Container(
            // width: size.width,
            child: Stack(
          children: [
            Positioned(
              top: 40,
              child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleft24x24,
                  height: getSize(24.00),
                  width: getSize(24.00),
                  margin: getMargin(left: 16, top: 12),
                  onTap: () {
                    onTapImgArrowleft();
                  }),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  //PageItem(),
                  ...listMediaModel
                      .map(
                        (e) => PageItem(e),
                      )
                      .toList()
                ],
              ),
            ),
          ],
        )));
  }

  // ignore: non_constant_identifier_names
  Container PageItem(MediaModel model) {
    List<String> imgs = [];
    imgs = model.lienKet!.split(",");
    imgs = imgs.where((e) {
      e = e.trimLeft();
      return FileExtension.getExtensionFile(e) != "mp3" &&
          FileExtension.getExtensionFile(e) != "mp4";
    }).toList();

    return Container(
      width: Get.width,
      // color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 64,
                // ),

                Container(
                    //      color: Colors.red,
                    //  height: getVerticalSize(210.00),
                    width: size.width,
                    //    margin: getMargin(top: 221),
                    child: Stack(alignment: Alignment.centerRight, children: [
                      CarouselSlider(
                          carouselController: carouselController,
                          items: imgs
                              .map(
                                (e) => CustomImageView(
                                  fit: BoxFit.cover,
                                  url: AppConstances.ENTRY_POINT + e.trimLeft(),
                                  //height: getVerticalSize(210.00),
                                  width: Get.width,
                                  alignment: Alignment.center,
                                ),
                              )
                              .toList(),
                          options: CarouselOptions(
                              autoPlay: true,
                              //  enlargeCenterPage: true,
                              viewportFraction: 1,
                              // aspectRatio: 1,
                              initialPage: 0,
                              onPageChanged: ((index, reason) {
                                _current(index);
                              }))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(197.00),
                              margin: getMargin(right: 12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            // width:
                                            //     getHorizontalSize(
                                            //         41.00),
                                            padding: getPadding(
                                                left: 9,
                                                top: 1,
                                                right: 9,
                                                bottom: 1),
                                            decoration: AppDecoration
                                                .txtFillBlack9006601
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder10),
                                            child: Obx(() {
                                              return Text(
                                                  "${_current.toInt() + 1}/${imgs.length}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium12WhiteA700
                                                      .copyWith(height: 1.25));
                                            }))),
                                    Obx(() {
                                      return Container(
                                          height: getVerticalSize(6.00),
                                          margin: getMargin(top: 164),
                                          child: SmoothIndicator(
                                              offset: _current.value.toDouble(),
                                              count: imgs.length,
                                              axisDirection: Axis.horizontal,
                                              effect: ScrollingDotsEffect(
                                                  spacing: 4,
                                                  activeDotColor:
                                                      ColorConstant.amber400,
                                                  dotColor:
                                                      ColorConstant.whiteA7007f,
                                                  dotHeight:
                                                      getVerticalSize(6.00),
                                                  dotWidth: getHorizontalSize(
                                                      6.00))));
                                    })
                                  ])))
                    ])),
              ],
            ),
          ),
          Positioned(
            child: ContentImg(model.tenLeHoi, model.gioiThieu),
            bottom: 0,
          )
        ],
      ),
    );
  }

  Container ContentImg(name, content) {
    return Container(
        width: size.width,
        // margin: getMargin(top: 99),
        padding: getPadding(all: 16),
        decoration: AppDecoration.gradientBlack90000Black900b201,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SF Pro',
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(340.00),
                margin: getMargin(top: 10, bottom: 31),
                child: ReadMoreText(
                  content,
                  trimLines: 3,
                  colorClickableText: ColorConstant.whiteA700,
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Xem thêm',
                  trimExpandedText: 'Thu gọn',
                  style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(14),
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.43),
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ]));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgRectangleTwo() {
    Get.toNamed(AppRoutes.libraryVideoDetailsScreen);
  }

  // onTapXoaymnhnh() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  //   //Get.toNamed(AppRoutes.pictureDetailsRotationScreen);
  // }

  onTapTxtLtxtc() {
    Get.toNamed(AppRoutes.pictureDetailsFullheightScreen);
  }
}
