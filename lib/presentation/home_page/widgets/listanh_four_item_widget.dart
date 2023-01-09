import '../controller/home_controller.dart';
import '../models/listanh_four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class ListanhFourItemWidget extends StatelessWidget {
  ListanhFourItemWidget(this.listanhFourItemModelObj, {this.onTapTintuc});

  ListanhFourItemModel listanhFourItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapTintuc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTintuc!();
      },
      child: Padding(
        padding: getPadding(
          top: 7.555023,
          right: 36,
          bottom: 7.555023,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAnh80x120,
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
                left: 12,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      168.00,
                    ),
                    child: Text(
                      "msg_m_t_s_l_h_i_d_n".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProMedium16.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCalendar,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                          margin: getMargin(
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_23_11_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProRegular14Gray900.copyWith(
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
          ],
        ),
      ),
    );
  }
}
