import 'package:hue_festival/data/models/new/new_model.dart';
import 'package:hue_festival/presentation/huenews_details_one_screen/huenews_details_one_screen.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletons/skeletons.dart';

import '../news_page/widgets/listanh_item_widget.dart';
import 'controller/huenews_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart';

class HuenewsScreen extends GetWidget<HuenewsController> {
  RefreshController _refreshController = RefreshController();
  Rx<int> _pageCurrent = 0.obs;
  void loadMore() {}
  @override
  Widget build(BuildContext context) {
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
              onTap: onTapArrowleft),
          centerTitle: true,
          title: AppbarSubtitle(text: "msg_tin_t_c_s_ki_n2".tr),
          styleType: Style.bgOutlineGray200),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: SizedBox(
            width: size.width,
            child: Container(
              child: controller.obx(
                  (state) => SmartRefresher(
                        onLoading: () {
                          _pageCurrent.value++;
                          controller.loadMore(_pageCurrent.value);
                          _refreshController.loadComplete();
                        },
                        onRefresh: () async {
                          _pageCurrent(0);
                          await controller.initNews();
                          _refreshController.refreshCompleted();
                        },
                        enablePullUp: true,
                        enablePullDown: true,
                        controller: _refreshController,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            ...state!.newsList!.map((e) {
                              if (state.newsList!.indexOf(e) == 0) {
                                return firstNewPrimary(
                                    data: state.newsList![0]);
                              } else {
                                return state.newsList!.indexOf(e) == 1
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                          top: 16,
                                        ),
                                        child: ListanhItemWidget(e),
                                      )
                                    : ListanhItemWidget(e);
                              }
                            }).toList()
                          ],
                        ),
                      ),
                  onLoading: Padding(
                    //  height: 150,
                    padding: getPadding(left: 8, top: 8, right: 8),
                    child: Center(
                      child: SkeletonAvatar(
                        style: SkeletonAvatarStyle(
                          width: double.infinity,
                          minHeight: MediaQuery.of(context).size.height / 8,
                          maxHeight: MediaQuery.of(context).size.height / 3,
                        ),
                      ),
                    ),
                  ),
                  onError: ((error) => Center(
                        //  height: 150,

                        child: Container(
                          width: 230,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.onInit();
                            },
                            child: Row(
                              children: [
                                Icon(Icons.refresh),
                                Text("Làm mới để lấy lại dữ liệu")
                              ],
                            ),
                          ),
                        ),
                      ))),
            )),
      ),
    );
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.huenewsDetailsOneScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}

InkWell firstNewPrimary({required NewsList data}) {
  final format = DateFormat('dd-MM-yyyy hh:mm');
  var time = format.parse(data.publishTime!);
  return InkWell(
    onTap: () {
      Get.to(() => HuenewsDetailsOneScreen(
            model: data,
          ));
      // onTapImgImage();
    },
    child: Container(
        height: getVerticalSize(193.00),
        //  width: getHorizontalSize(343.00),
        margin: getMargin(top: 16),
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
            fit: BoxFit.cover,
            url: data.imgNews!.url,
            height: getVerticalSize(193.00),
            width: getHorizontalSize(343.00),
            radius: BorderRadius.circular(getHorizontalSize(12.00)),
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(12.00)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0),
                      ],
                    )),
                child: Container()),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: getPadding(left: 8, top: 8, right: 8),
                  child: Column(
                      //   mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: getHorizontalSize(45.00),
                            padding: getPadding(
                                left: 4, top: 4, right: 4, bottom: 4),
                            decoration: AppDecoration.fillWhiteA700b2.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      //: getPadding(left: 8),
                                      child: Text(time.day.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProBold16Red900
                                              .copyWith(height: 1.25))),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Text(
                                          time.month.toString() +
                                              "." +
                                              time.year.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProRegular10
                                              .copyWith(height: 1.20)))
                                ])),
                        Padding(
                          padding: getPadding(bottom: 16),
                          child: Text(
                            data.title!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProBold16WhiteA700
                                .copyWith(height: 1.25),
                          ),
                        )
                      ])))
        ])),
  );
}
