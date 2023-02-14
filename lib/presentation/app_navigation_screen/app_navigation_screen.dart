import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        bottom: 10),
                                    child: Text("lbl_app_navigation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtRobotoRegular20))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Text("msg_check_your_app_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtRobotoRegular16))),
                            Container(
                                height: getVerticalSize(1.00),
                                width: size.width,
                                margin: getMargin(top: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.black901))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              width: size.width,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapSplash();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_splash"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapHomeContainer();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_home_container"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapSearch();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_search"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapHueNews();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_huenews"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapComingFestival();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_comingfestival"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapHueNewsDetailsOne();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_huenews_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapHueNewsDetails();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_huenews_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTypicalFestival();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "lbl_typicalfestival"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapFestivalListFestivalCategory();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_festival_listfe"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapFestivalListFestivalCategoryTraditionalFestival();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_festival_listfe2"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapFestivalListFestivalDetails();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_festival_listfestival_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapLibraryPictureDetails();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_library_picture_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapLibraryVideoDetails();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_library_video_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapPictureDetailsRotation();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_picture_details_rotation"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapVideoDetailsRotation();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_video_details_rotation"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapPictureDetailsFullHeight();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 20,
                                                                  top: 10,
                                                                  right: 20,
                                                                  bottom:
                                                                      10),
                                                          child: Text(
                                                              "msg_picture_details_fullheight"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoRegular20))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(
                                                              1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 5),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray400))
                                                ])))
                                  ]))))
                ])));
  }

  onTapSplash() {
    Get.toNamed(AppRoutes.splashScreen);
  }

  onTapHomeContainer() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapHueNews() {
    Get.toNamed(AppRoutes.huenewsScreen);
  }

  onTapComingFestival() {
    Get.toNamed(AppRoutes.comingfestivalScreen);
  }

  onTapHueNewsDetailsOne() {
    Get.toNamed(AppRoutes.huenewsDetailsOneScreen);
  }

  onTapHueNewsDetails() {
    Get.toNamed(AppRoutes.huenewsDetailsScreen);
  }

  onTapTypicalFestival() {
    Get.toNamed(AppRoutes.typicalfestivalScreen);
  }

  onTapFestivalListFestivalCategory() {
    Get.toNamed(AppRoutes.festivalListfestivalCategoryScreen);
  }

  onTapFestivalListFestivalCategoryTraditionalFestival() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapFestivalListFestivalDetails() {
    Get.toNamed(AppRoutes.festivalListfestivalDetailsScreen);
  }

  onTapLibraryPictureDetails() {
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }

  onTapLibraryVideoDetails() {
    Get.toNamed(AppRoutes.libraryVideoDetailsScreen);
  }

  onTapPictureDetailsRotation() {
    Get.toNamed(AppRoutes.pictureDetailsRotationScreen);
  }

  onTapVideoDetailsRotation() {
    Get.toNamed(AppRoutes.videoDetailsRotationScreen);
  }

  onTapPictureDetailsFullHeight() {
    Get.toNamed(AppRoutes.pictureDetailsFullheightScreen);
  }
}
