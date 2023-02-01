import '../controller/library_all_controller.dart';
import '../models/library_all_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class LibraryAllItemWidget extends StatelessWidget {
  LibraryAllItemWidget(this.libraryAllItemModelObj, {this.onTapImgImage});

  LibraryAllItemModel libraryAllItemModelObj;

  var controller = Get.find<LibraryAllController>();

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

          Container(
            height: 50,
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(
                      getHorizontalSize(12.00)) ,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0),

                    ],
                  )),
              child: Container()
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: getPadding(
                left: 8,
                bottom: 8,
                right: 8
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
