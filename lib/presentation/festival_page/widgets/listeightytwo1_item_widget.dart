import '../controller/festival_controller.dart';
import '../models/listeightytwo1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class Listeightytwo1ItemWidget extends StatelessWidget {
  Listeightytwo1ItemWidget(this.listeightytwo1ItemModelObj,
      {this.onTapLoaihinh});

  Listeightytwo1ItemModel listeightytwo1ItemModelObj;

  var controller = Get.find<FestivalController>();

  VoidCallback? onTapLoaihinh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTapLoaihinh!();
            },
            child: Container(
              padding: getPadding(
                left: 37,
                top: 14,
                right: 37,
                bottom: 14,
              ),
              decoration: AppDecoration.outlineAmber200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_82".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProBold26.copyWith(
                      height: 1.23,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      87.00,
                    ),
                    margin: getMargin(
                      top: 6,
                    ),
                    child: Text(
                      "msg_l_h_i_truy_n_th_ng".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtSFProMedium14.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: getPadding(
              left: 55,
              top: 15,
              right: 55,
              bottom: 15,
            ),
            decoration: AppDecoration.outlineAmber200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_16".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProBold26.copyWith(
                    height: 1.23,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    52.00,
                  ),
                  margin: getMargin(
                    top: 6,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_l_h_i_v_n_h_a".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtSFProMedium14.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
