import 'package:hue_festival/presentation/library_all_page/widgets/library_all_item_widget.dart';
import 'package:hue_festival/presentation/library_picture_details_screen/library_picture_details_screen.dart';

import 'controller/library_picture_controller.dart';
import 'models/library_picture_model.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LibraryPicturePage extends StatelessWidget {
  LibraryPictureController controller =
      Get.put(LibraryPictureController(LibraryPictureModel().obs));

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
                return LibraryAllItemWidget(state[index], onTapImgImage: () {
                  //state.removeWhere((e) =>state.indexOf(e)==index );
                  var stateFirst = state[0];
                  state[0] = state[index];
                  state[index] = stateFirst;
                  Get.to(() => LibraryPictureDetailsScreen(
                        medias: state[index],
                        listMediaModel: state,
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
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }
}
