import '../../widgets/app_bar/appbar_image.dart';
import '../huenews_details_screen/widgets/listanh2_item_widget.dart';
import 'controller/huenews_details_controller.dart';
import 'models/listanh2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/widgets/custom_button.dart';

class HuenewsDetailsScreen extends GetWidget<HuenewsDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Stack(
          children: [
            Container(
                width: size.width,
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage,
                            height: getVerticalSize(237.00),
                            width: getHorizontalSize(375.00),
                            alignment: Alignment.center),
                        SizedBox(
                            child: Container(
                                width: size.width,
                                margin: getMargin(bottom: 34),
                                padding: getPadding(all: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL24),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomButton(
                                          height: 24,
                                          width: 126,
                                          text: "msg_s_ki_n_s_p_di_n".tr,
                                          margin: getMargin(top: 4),
                                          variant: ButtonVariant.FillAmber40033,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle:
                                              ButtonFontStyle.SFProMedium12),
                                      Padding(
                                          padding: getPadding(top: 11),
                                          child: Text(
                                              "msg_ch_ng_tr_nh_countdown".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProBold20Gray90001
                                                  .copyWith(height: 1.20))),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCamera,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                onTap: () {
                                                  onTapImgCamera();
                                                }),
                                            Padding(
                                                padding:
                                                    getPadding(left: 8, top: 3),
                                                child: Text("lbl_31_12_2022".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProRegular16
                                                        .copyWith(
                                                            height: 1.25))),
                                            Container(
                                                height: getSize(4.00),
                                                width: getSize(4.00),
                                                margin: getMargin(
                                                    left: 8,
                                                    top: 10,
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .black90066,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                2.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8, top: 2, bottom: 1),
                                                child: Text("lbl_08_00_pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProRegular16
                                                        .copyWith(
                                                            height: 1.25)))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(24.00),
                                                width: getSize(24.00)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8, top: 2, bottom: 1),
                                                child: Text(
                                                    "lbl_th_nh_ph_hu".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProRegular16
                                                        .copyWith(
                                                            height: 1.25)))
                                          ])),
                                      Container(
                                          width: getHorizontalSize(338.00),
                                          margin: getMargin(top: 15),
                                          child: Text("msg_l_ch_ng_tr_nh".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSFProRegular16
                                                  .copyWith(height: 1.50))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(343.00),
                                          margin: getMargin(top: 14),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray200)),
                                      Padding(
                                          padding: getPadding(top: 18),
                                          child: Text("msg_c_c_s_ki_n_kh_c".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProMedium16Black900
                                                  .copyWith(height: 1.25))),
                                      Container(
                                          //height: 400,
                                          // padding:
                                          //     getPadding(top: 15, right: 3),
                                          child: Obx(() => ListView.builder(
                                              padding: EdgeInsets.only(top: 16),
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              // itemExtent: q00,
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .huenewsDetailsModelObj
                                                  .value
                                                  .listanh2ItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                Listanh2ItemModel model =
                                                    controller
                                                        .huenewsDetailsModelObj
                                                        .value
                                                        .listanh2ItemList[index];
                                                return Listanh2ItemWidget(
                                                    model);
                                              })))
                                    ])))
                      ]),
                )),
            Positioned(
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(
                      0.5,
                      0,
                    ),
                    end: Alignment(
                      0.5,
                      1,
                    ),
                    colors: [
                      ColorConstant.black90099,
                      ColorConstant.black90000,
                    ],
                  ),
                ),
                height: getVerticalSize(128),
                //  leadingWidth: 375,
                child: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft24x24,
                    margin:
                        getMargin(left: 16, top: 12, right: 335, bottom: 12),
                    onTap: onTapArrowleft3),
                //  styleType: Style.bgGradientBlack90099Black90000,
              ),
            )
          ],
        ));
  }

  onTapArrowleft3() {
    Get.back();
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
