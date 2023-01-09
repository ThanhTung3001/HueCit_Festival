import '../controller/festival_controller.dart';
import '../models/listanh_four1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class ListanhFour1ItemWidget extends StatelessWidget {
  ListanhFour1ItemWidget(this.listanhFour1ItemModelObj, {this.onTapTintuc});

  ListanhFour1ItemModel listanhFour1ItemModelObj;

  var controller = Get.find<FestivalController>();

  VoidCallback? onTapTintuc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.8099975,
        bottom: 8.8099975,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTapTintuc!();
            },
            child: Padding(
              padding: getPadding(
                bottom: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAnh,
                    height: getVerticalSize(
                      100.00,
                    ),
                    width: getHorizontalSize(
                      163.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      "lbl_l_t_x_t_c".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProMedium16.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAnh2,
                height: getVerticalSize(
                  100.00,
                ),
                width: getHorizontalSize(
                  163.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Text(
                  "lbl_l_h_i_c_u_ng".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProMedium16Black900.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
