import '../library_all_page/widgets/library_all_item_widget.dart';
import 'controller/library_all_controller.dart';
import 'models/library_all_item_model.dart';
import 'models/library_all_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryAllPage extends StatelessWidget {
  LibraryAllController controller =
      Get.put(LibraryAllController(LibraryAllModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(() => GridView.builder(
            shrinkWrap: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(104.00),
                crossAxisCount: 3,
                mainAxisSpacing: getHorizontalSize(16.00),
                crossAxisSpacing: getHorizontalSize(16.00)),
            physics: BouncingScrollPhysics(),
            itemCount: controller
                .libraryAllModelObj.value.libraryAllItemList.length,
            itemBuilder: (context, index) {
              LibraryAllItemModel model = controller
                  .libraryAllModelObj.value.libraryAllItemList[index];
              return LibraryAllItemWidget(model,
                  onTapImgImage: onTapImgImage);
            })));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }
}
