import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'controller/festival_listfestival_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

class FestivalListfestivalCategoryScreen
    extends GetWidget<FestivalListfestivalCategoryController> {
  RefreshController _refreshController = RefreshController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      //backgroundColor: Colors.white,
      //  backgroundColor: Colors.white,
      appBar: CustomAppBar(
          bottom: PreferredSize(
            child: Container(),
            preferredSize: Size.fromHeight(100.0),
          ),
          height: getVerticalSize(56.00),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(24.00),
              width: getSize(24.00),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 16, top: 12, bottom: 12),
              onTap: onTapArrowleft5),
          centerTitle: true,
          title: AppbarSubtitle(text: "msg_danh_s_ch_l_h_i".tr),
          styleType: Style.bgOutlineGray200),
      body: controller.obx(
        (state) => SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Container(
                  //  margin: getMargin(left: 16, top: 0)
                  margin: getMargin(top: 16),
                  color: Colors.transparent,
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 40,
                            // margin: EdgeInsets.only(left: 16, right: 16),
                            // constraints: BoxConstraints(minHeight: 80),
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,

                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                ButtonElementApp(
                                  text: "Tất cả",
                                  onTap: () {},
                                  isActive: true,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                ButtonElementApp(
                                  text: "Văn hoá truyền thống",
                                  onTap: () {},
                                  isActive: false,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            )),
                        Container(
                          height: Get.height,
                          // margin: EdgeInsets.only(bottom: 50),
                          padding: getPadding(
                            top: 16,
                          ),
                          child: SmartRefresher(
                              enablePullUp: true,
                              enablePullDown: true,
                              controller: _refreshController,
                              child: GridView.count(
                                childAspectRatio: 1.35,
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                children: [
                                  ...state!.map((e) {
                                    var imgs = e.hinhAnh!.split(',');
                                    return Container(
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                              fit: BoxFit.cover,
                                              url: AppConstances.ENTRY_POINT +
                                                  imgs[0],
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(163.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00))),
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Text(e.tenLeHoi ?? "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProMedium16
                                                      .copyWith(height: 1.25))),
                                        ],
                                      ),
                                    );
                                  }).toList()
                                ],
                              )),
                        )
                      ]))),
        ),
      ),
    );
  }

  onTapTxtFestivalPagetruynthng2() {
    Get.toNamed(
        AppRoutes.festivalListfestivalCategoryTraditionalfestivalScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}

class ButtonElementApp extends StatelessWidget {
  ButtonElementApp(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.isActive})
      : super(key: key);
  String text;
  Function onTap;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(
                ColorConstant.red900,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(
                    color: ColorConstant.red900,
                  ),
                ),
              ),
            ),
            onPressed: onTap(),
            child: Text(
              text,
              style: TextStyle(
                color: ColorConstant.whiteA700,
              ),
            ),
          )
        : OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(
                    color: ColorConstant.red900,
                  ),
                ),
              ),
              side: MaterialStateProperty.all(BorderSide(
                  color: ColorConstant.red900,
                  width: 1.0,
                  style: BorderStyle.solid)),
            ),
            onPressed: onTap(),
            child: Text(
              text,
              style: TextStyle(
                color: ColorConstant.red900,
              ),
            ),
          );
  }
}


/*

CustomImageView(
                                            imagePath: ImageConstant.imgAnh,
                                            height: getVerticalSize(100.00),
                                            width: getHorizontalSize(163.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        Padding(
                                            padding: getPadding(top: 12),
                                            child: Text("lbl_l_t_x_t_c".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium16
                                                    .copyWith(height: 1.25))),
                                      
 */