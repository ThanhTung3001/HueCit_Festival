import 'package:hue_festival/core/utils/file_extension.dart';
import 'package:hue_festival/data/models/media/media_model.dart';
import 'package:hue_festival/presentation/library_all_page/widgets/lib_video.dart';

import '../controller/library_all_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

// ignore: must_be_immutable
class LibraryAllItemWidget extends StatelessWidget {
  LibraryAllItemWidget(this.model, {this.onTapImgImage});

  MediaModel model;

  var controller = Get.find<LibraryAllController>();

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    // model.lienKet =
    //     "https://file-examples.com/storage/feeb72b10363daaeba4c0c9/2017/04/file_example_MP4_480_1_5MG.mp4";
    var img = (AppConstances.ENTRY_POINT + model.lienKet!.split(",")[0]);
    //print(img);
    return InkWell(
      onTap: () {
        onTapImgImage!();
      },
      child: Container(
        //color: Colors.red,
        height: getSize(
          103.00,
        ),
        width: getSize(
          103.00,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            FileExtension.getExtensionFile(img) != "mp4"
                ? Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      //color: Colors.blue,
                      child: CustomImageView(
                        height: Get.height,
                        fit: BoxFit.cover,
                        url: img,
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: FirstFrame(path: img, onTap: () {}),
                  ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(12.00)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0),
                      ],
                    )),
                child: Container()),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: getPadding(left: 8, bottom: 8, right: 8),
                child: Text(
                  model.tenLeHoi!,
                  maxLines: 1,
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
      ),
    );
  }
}
