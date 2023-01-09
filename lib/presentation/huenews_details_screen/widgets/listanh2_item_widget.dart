import '../controller/huenews_details_controller.dart';
import '../models/listanh2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class Listanh2ItemWidget extends StatelessWidget {
  Listanh2ItemWidget(this.listanh2ItemModelObj);

  Listanh2ItemModel listanh2ItemModelObj;

  var controller = Get.find<HuenewsDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 7.595001,
        bottom: 7.595001,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage193x335,
            height: getVerticalSize(
              80.00,
            ),
            width: getHorizontalSize(
              120.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    207.00,
                  ),
                  child: Text(
                    "msg_wellness_festival".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProMedium16.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_t_31_12_2022".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProRegular14Teal800.copyWith(
                      height: 1.21,
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
