import '../library_video_page/widgets/library_video_item_widget.dart';
import 'controller/library_video_controller.dart';
import 'models/library_video_item_model.dart';
import 'models/library_video_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryVideoPage extends StatelessWidget {
  LibraryVideoController controller =
      Get.put(LibraryVideoController(LibraryVideoModel().obs));

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
                    .libraryVideoModelObj.value.libraryVideoItemList.length,
                itemBuilder: (context, index) {
                  LibraryVideoItemModel model = controller
                      .libraryVideoModelObj.value.libraryVideoItemList[index];
                  return LibraryVideoItemWidget(model,
                      onTapImgImage: onTapImgImage);
                }))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.libraryVideoDetailsScreen);
  }
}
