import 'package:hue_festival/data/models/new/new_model.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletons/skeletons.dart';

import '../huenews_details_one_screen/huenews_details_one_screen.dart';
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
  RefreshController _refreshController = RefreshController();

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
        body: SmartRefresher(
          controller: _refreshController,
          enablePullUp: true,
          onRefresh: () async {
            await controller.initNews();
            _refreshController.refreshCompleted();
          },
          child: SizedBox(
              width: size.width,
              child: Padding(
                  padding: getPadding(left: 16, top: 20, right: 16, bottom: 16),
                  child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      // mainAxisAlignment: MainAxisAlignment.start,
                      shrinkWrap: true,
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
                          child: controller.obx(
                              (state) => Column(
                                    children: [
                                      ...state!.item1.newsList!.map((e) {
                                        if (state.item1.newsList!.indexOf(e) ==
                                            0) {
                                          return firstNewPrimary(
                                              data: state.item1.newsList![0]);
                                        } else {
                                          ListanhItemModel model =
                                              ListanhItemModel(
                                                  title: e.title ?? "",
                                                  url: e.imgNews!.url ?? '',
                                                  time: e.publishTime ?? "");
                                          return state.item1.newsList!
                                                      .indexOf(e) ==
                                                  1
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
                              onLoading: Padding(
                                //  height: 150,
                                padding: getPadding(left: 8, top: 8, right: 8),
                                child: Center(
                                  child: SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                      width: double.infinity,
                                      minHeight:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      maxHeight:
                                          MediaQuery.of(context).size.height /
                                              3,
                                    ),
                                  ),
                                ),
                              ),
                              onError: ((error) => Container(
                                    height: 150,
                                    child: Center(
                                      child: Text(error.toString()),
                                    ),
                                  ))),
                        ),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                        controller.obx(
                          (state) => Padding(
                              padding: getPadding(top: 8),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: state!.item2.length,
                                  itemBuilder: (context, index) {
                                    var event = state.item2[index];
                                    var img = event.anhDaiDien!.split(",");
                                    ListEventModel model = ListEventModel(
                                        time: event.batDau ?? "",
                                        title: event.tenSuKien!,
                                        location: event.diaDiem ?? "",
                                        url: img[0]);
                                    return ListEventWidget(model,
                                        onTapCard: onTapCard);
                                  })),
                          onLoading: Padding(
                            //  height: 150,
                            padding: getPadding(left: 8, top: 8, right: 8),
                            child: Center(
                              child: SkeletonAvatar(
                                style: SkeletonAvatarStyle(
                                  width: double.infinity,
                                  minHeight:
                                      MediaQuery.of(context).size.height / 8,
                                  maxHeight:
                                      MediaQuery.of(context).size.height / 3,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]))),
        ));
  }

  InkWell firstNewPrimary({required NewsList data}) {
    final format = DateFormat('dd-MM-yyyy hh:mm');
    var time = format.parse(data.publishTime!);
    //print(time);
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
                onTap: () {
                  //onTapImgImage();
                }),
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
                              decoration: AppDecoration.fillWhiteA700b2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        //    padding: getPadding(left: 8),
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
                              child: Text(data.title!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProBold16WhiteA700
                                      .copyWith(height: 1.25)))
                        ])))
          ])),
    );
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
