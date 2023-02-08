import 'package:flutter_html/flutter_html.dart';
import 'package:hue_festival/data/models/new/new_model.dart';

import '../huenews_details_one_screen/widgets/listanh1_item_widget.dart';
import '../news_page/controller/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/app_bar/appbar_image.dart';
import 'package:hue_festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:hue_festival/widgets/app_bar/custom_app_bar.dart' as AppBar;

class HuenewsDetailsOneScreen extends GetWidget<NewsController> {
  // var _newController = Get.put();
  NewsList model;
  HuenewsDetailsOneScreen({required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar.CustomAppBar(
          height: getVerticalSize(56.00),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(24.00),
              width: getSize(24.00),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 16, top: 12, bottom: 12),
              onTap: onTapArrowleft2),
          centerTitle: true,
          title: AppbarSubtitle(text: "msg_chi_ti_t_tin_t_c".tr),
        ),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Container(
                    width: size.width,
                    margin: getMargin(top: 20, bottom: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  // width: getHorizontalSize(326.00),
                                  margin: getMargin(left: 16, right: 16),
                                  child: Text(model.title ?? "",
                                      maxLines: 2,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold20Gray90001
                                          .copyWith(height: 1.40)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    //  onTapThoigian();
                                  },
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 8),
                                      child: Row(children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCalendar16x16,
                                          height: getSize(16.00),
                                          width: getSize(16.00),
                                          //margin: getMargin(bottom: 1),
                                        ),
                                        Padding(
                                            padding: getPadding(left: 4),
                                            child: Text(
                                                (model.publishTime ?? '')
                                                    .replaceAll("-", "/"),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProRegular14Black90066
                                                    .copyWith(height: 1.21)))
                                      ])))),
                          CustomImageView(
                              fit: BoxFit.cover,
                              url: model.imgNews!.url ?? "",
                              height: getVerticalSize(212.00),
                              width: Get.width,
                              margin: getMargin(top: 16)),
                          Container(
                              //width: getHorizontalSize(343.00),
                              margin: getMargin(top: 16, left: 16, right: 16),
                              child: Text(
                                model.summary ?? "",
                                // maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProMedium16
                                    .copyWith(height: 1.50),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              //  width: getHorizontalSize(341.00),
                              //   margin: getMargin(top: 16),
                              child: Html(
                                data: model.content,
                                style: {
                                  "p": Style(
                                    fontFamily: "SF Pro",
                                    fontWeight: FontWeight.w400,
                                    fontSize: FontSize(16),
                                    lineHeight: LineHeight(1.5),
                                  )
                                },
                              )),
                          Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(343.00),
                              margin: getMargin(top: 16),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray200)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("lbl_c_c_tin_kh_c".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProMedium16Black900
                                          .copyWith(height: 1.25)))),
                          controller.obx(((state) => Padding(
                                padding:
                                    getPadding(left: 16, top: 16, right: 16),
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state!.item1.newsList!.length,
                                    itemBuilder: (context, index) {
                                      var model = state.item1.newsList![index];
                                      return Listanh1ItemWidget(model);
                                    }),
                              )))
                        ])))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
