import '../controller/picture_details_fullheight_controller.dart';
import '../models/sliderltxtc_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class SliderltxtcItemWidget extends StatelessWidget {
  SliderltxtcItemWidget(this.sliderltxtcItemModelObj);

  SliderltxtcItemModel sliderltxtcItemModelObj;

  var controller = Get.find<PictureDetailsFullheightController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "lbl_l_t_x_t_c".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtSFProBold16WhiteA700.copyWith(
            height: 1.25,
          ),
        ),
        Container(
          width: getHorizontalSize(
            340.00,
          ),
          margin: getMargin(
            top: 10,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_l_th_ng_h_ng2".tr,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w400,
                    height: 1.43,
                  ),
                ),
                TextSpan(
                  text: "lbl_xem_th_m".tr,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w510,
                    height: 1.43,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
