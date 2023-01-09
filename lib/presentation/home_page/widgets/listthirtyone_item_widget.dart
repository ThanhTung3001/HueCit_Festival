import '../controller/home_controller.dart';
import '../models/listthirtyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class ListthirtyoneItemWidget extends StatelessWidget {
  ListthirtyoneItemWidget(this.listthirtyoneItemModelObj, {this.onTapCard});

  ListthirtyoneItemModel listthirtyoneItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapCard!();
          },
          child: Container(
            margin: getMargin(
              right: 16,
            ),
            decoration: AppDecoration.outlineGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    193.00,
                  ),
                  width: getHorizontalSize(
                    335.00,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: getVerticalSize(
                          193.00,
                        ),
                        width: getHorizontalSize(
                          335.00,
                        ),
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          topRight: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: getMargin(
                            left: 8,
                            top: 8,
                          ),
                          padding: getPadding(
                            left: 4,
                            top: 5,
                            right: 4,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillWhiteA700b2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_31".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProBold16Red900.copyWith(
                                  height: 1.25,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_12_2022".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProRegular10.copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 19,
                  ),
                  child: Text(
                    "msg_ch_ng_tr_nh_countdown".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProBold16Gray90001.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 6,
                    bottom: 41,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLocation,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "lbl_th_nh_ph_hu".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProRegular14.copyWith(
                            height: 1.21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
