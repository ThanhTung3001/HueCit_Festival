import '../controller/library_picture_controller.dart';
import '../models/gridltxtc_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class GridltxtcItemWidget extends StatelessWidget {
  GridltxtcItemWidget(this.gridltxtcItemModelObj, {this.onTapImgImage});

  GridltxtcItemModel gridltxtcItemModelObj;

  var controller = Get.find<LibraryPictureController>();

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        103.00,
      ),
      width: getSize(
        103.00,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAnh,
            height: getSize(
              103.00,
            ),
            width: getSize(
              103.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImage!();
            },
          ),
          Positioned(
            left: 0,
            right: 0,

            bottom: 0,
              child: Container(
                height: 50,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(12.00)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0),
                        ],
                      )),
                  child: Container())),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: getPadding(
                left: 8,
                bottom: 10,
              ),
              child: Text(
                "lbl_l_t_x_t_c2".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProMedium12WhiteA700.copyWith(
                  height: 1.25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
