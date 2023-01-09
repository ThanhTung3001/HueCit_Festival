import '../library_picture_page/widgets/gridltxtc_item_widget.dart';
import 'controller/library_picture_controller.dart';
import 'models/gridltxtc_item_model.dart';
import 'models/library_picture_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryPicturePage extends StatelessWidget {
  LibraryPictureController controller =
      Get.put(LibraryPictureController(LibraryPictureModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(104.00),
                    crossAxisCount: 3,
                    mainAxisSpacing: getHorizontalSize(16.00),
                    crossAxisSpacing: getHorizontalSize(16.00)),
                physics: BouncingScrollPhysics(),
                itemCount: controller
                    .libraryPictureModelObj.value.gridltxtcItemList.length,
                itemBuilder: (context, index) {
                  GridltxtcItemModel model = controller
                      .libraryPictureModelObj.value.gridltxtcItemList[index];
                  return GridltxtcItemWidget(model,
                      onTapImgImage: onTapImgImage);
                }))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }
}
