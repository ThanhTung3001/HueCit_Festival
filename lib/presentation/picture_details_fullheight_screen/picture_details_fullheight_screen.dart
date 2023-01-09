import '../picture_details_fullheight_screen/widgets/sliderltxtc_item_widget.dart';
import 'controller/picture_details_fullheight_controller.dart';
import 'models/sliderltxtc_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PictureDetailsFullheightScreen
    extends GetWidget<PictureDetailsFullheightController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.black90001,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft24x24,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: onTapArrowleft8),
                actions: [
                  Container(
                      width: getHorizontalSize(41.00),
                      margin:
                          getMargin(left: 16, top: 14, right: 16, bottom: 18),
                      padding: getPadding(left: 9, top: 1, right: 9, bottom: 1),
                      decoration: AppDecoration.txtFillBlack9006601.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder10),
                      child: Text("lbl_1_12".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProMedium12WhiteA700
                              .copyWith(height: 1.25)))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 52),
                decoration: BoxDecoration(
                    color: ColorConstant.black90001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRectangle15),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 16, top: 34, right: 16, bottom: 34),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(top: 540),
                              child: Obx(() => CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(92.00),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: controller
                                      .pictureDetailsFullheightModelObj
                                      .value
                                      .sliderltxtcItemList
                                      .length,
                                  itemBuilder: (context, index, realIndex) {
                                    SliderltxtcItemModel model = controller
                                        .pictureDetailsFullheightModelObj
                                        .value
                                        .sliderltxtcItemList[index];
                                    return SliderltxtcItemWidget(model);
                                  }))),
                          Obx(() => Container(
                              height: getVerticalSize(6.00),
                              margin: getMargin(top: 8),
                              child: AnimatedSmoothIndicator(
                                  activeIndex: controller.silderIndex.value,
                                  count: controller
                                      .pictureDetailsFullheightModelObj
                                      .value
                                      .sliderltxtcItemList
                                      .length,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.amber400,
                                      dotColor: ColorConstant.whiteA7007f,
                                      dotHeight: getVerticalSize(6.00),
                                      dotWidth: getHorizontalSize(6.00)))))
                        ])))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
