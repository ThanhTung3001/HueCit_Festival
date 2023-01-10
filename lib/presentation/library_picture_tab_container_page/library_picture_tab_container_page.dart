import 'controller/library_picture_tab_container_controller.dart';
import 'models/library_picture_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/library_all_page/library_all_page.dart';
import 'package:hue_festival/presentation/library_picture_page/library_picture_page.dart';
import 'package:hue_festival/presentation/library_video_page/library_video_page.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_title.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class LibraryPictureTabContainerPage extends StatelessWidget {
  LibraryPictureTabContainerController controller = Get.put(
      LibraryPictureTabContainerController(
          LibraryPictureTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(64.00),
            title: AppbarTitle(
                text: "lbl_th_vi_n".tr, margin: getMargin(left: 16)),
            actions: [
              AppbarImage(
                  height: getSize(48.00),
                  width: getSize(48.00),
                  svgPath: ImageConstant.imgSearch,
                  margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
                  onTap: onTapSearch3)
            ],
            styleType: Style.bgFillWhiteA700),
        body: Container(
            width: size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          border: Border(
                              bottom: BorderSide(
                                  color: ColorConstant.gray200,
                                  width: getHorizontalSize(1.00)))),
                      child: TabBar(
                          controller: controller.navtabController,
                          tabs: [
                            Tab(text: "lbl_t_t_c".tr),
                            Tab(text: "lbl_h_nh_nh".tr),
                            Tab(text: "lbl_video".tr)
                          ],
                          labelColor: ColorConstant.red900,
                          unselectedLabelColor: ColorConstant.black90066,
                          indicator: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorConstant.red900,
                                      width: getHorizontalSize(2.00)))))),
                  Container(
                      margin: getMargin(
                          left: 16, top: 20, right: 16, bottom: 5),
                      height: getVerticalSize(460.00),
                      child: TabBarView(
                          controller: controller.navtabController,
                          children: [
                            LibraryAllPage(),
                            LibraryPicturePage(),
                            LibraryVideoPage()
                          ]))
                ])));
  }

  onTapSearch3() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
