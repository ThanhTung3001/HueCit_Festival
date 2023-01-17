import '../controller/home_controller.dart';
import '../models/listeightytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class ListeightytwoItemWidget extends StatelessWidget {
  ListeightytwoItemWidget(this.listeightytwoItemModelObj, {this.onTapLoaihinh});

  ListeightytwoItemModel listeightytwoItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapLoaihinh;

  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.red,
      padding: getPadding(
      //  top: 8.0,
        bottom: 16
      ),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTapLoaihinh!();
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              //color: Colors.red,
             width: (Get.width/2)-25,
              padding: getPadding(
                left: 16,
                top: 16,
                right: 16,
                bottom: 16,
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
            //margin: EdgeInsets.only(left: 16),
            width:( Get.width/2)-25,
            padding: getPadding(
              left: 16,
              top: 16,
              right: 16,
              bottom: 16,
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
                  textAlign: TextAlign.center,
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
