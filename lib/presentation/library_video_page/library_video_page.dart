import 'package:hue_festival/presentation/library_all_page/widgets/library_all_item_widget.dart';

import '../library_video_details_screen/library_video_details_screen.dart';
import 'controller/library_video_controller.dart';
import 'models/library_video_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryVideoPage extends StatelessWidget {
  LibraryVideoController controller =
      Get.put(LibraryVideoController(LibraryVideoModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: controller.obx(
          (state) => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(104.00),
                  crossAxisCount: 3,
                  mainAxisSpacing: getHorizontalSize(16.00),
                  crossAxisSpacing: getHorizontalSize(16.00)),
              //  physics: BouncingScrollPhysics(),
              itemCount: state!.length,
              itemBuilder: (context, index) {
                print(state[index].lienKet);
                return LibraryAllItemWidget(state[index], onTapImgImage: () {
                  //  print("Tap tap");
                  Get.to(() => LibraryVideoDetailsScreen(
                        urls: state,
                      ));
                });
              }),
          onError: ((error) => Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.onInit();
                  },
                  child: Text("Làm mới"),
                ),
              ))),
    );
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.libraryVideoDetailsScreen);
  }
}
