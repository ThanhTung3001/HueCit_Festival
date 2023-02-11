import 'package:hue_festival/core/utils/file_extension.dart';
import 'package:hue_festival/presentation/library_video_details_screen/library_video_details_screen.dart';

import '../library_all_page/widgets/library_all_item_widget.dart';
import '../library_picture_details_screen/library_picture_details_screen.dart';
import 'controller/library_all_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

import 'models/library_all_model.dart';

// ignore_for_file: must_be_immutable
class LibraryAllPage extends StatelessWidget {
  LibraryAllController controller =
      Get.put(LibraryAllController(LibraryAllModel().obs));

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
                // print(state[index].lienKet);
                return LibraryAllItemWidget(state[index], onTapImgImage: () {
                  if (FileExtension.getExtensionFile(
                          state[index].lienKet!.split(",")[0]) ==
                      "mp4") {
                    Get.to(() => LibraryVideoDetailsScreen(
                          urls: state
                              .where((element) =>
                                  FileExtension.getExtensionFile(
                                      element.lienKet!.split(",")[0]) ==
                                  "mp4")
                              .toList(),
                        ));
                  } else {
                    Get.to(() => LibraryPictureDetailsScreen(
                          medias: state[index],
                          listMediaModel: state
                              .where((element) =>
                                  FileExtension.getExtensionFile(
                                          element.lienKet!.split(",")[0]) !=
                                      "mp4" &&
                                  FileExtension.getExtensionFile(
                                          element.lienKet!.split(",")[0]) !=
                                      "mp3")
                              .toList(),
                        ));
                  }
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
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }
}
