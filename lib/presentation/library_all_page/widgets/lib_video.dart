import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:hue_festival/core/utils/image_constant.dart';
import 'package:hue_festival/core/utils/size_utils.dart';
import 'package:hue_festival/widgets/custom_image_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

// ignore: must_be_immutable
class FirstFrame extends StatefulWidget {
  String path;
  Callback onTap;
  FirstFrame({required this.path, required this.onTap});
  @override
  _FirstFrameState createState() => _FirstFrameState();
}

class _FirstFrameState extends State<FirstFrame> {
  bool loading = true;
  late File _file;
  String _fileName = "";
  initThuml() async {
    // var uint8list = await VideoThumbnail.thumbnailData(
    //   video: widget.path,
    //   imageFormat: ImageFormat.JPEG,
    //   //maxWidth: 128, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
    //   quality: 100,
    // );
    var pathFile = (await getTemporaryDirectory()).path;
    //print(pathFile);
    final fileName = await VideoThumbnail.thumbnailFile(
      video: widget.path,
      thumbnailPath: pathFile,
      imageFormat: ImageFormat.PNG,
      maxHeight:
          64, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
      quality: 100,
    );

    _fileName = fileName!;
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initThuml();
  }

  Future<File> saveUint8ListAsFile(Uint8List data, String path) async {
    final file = File(path);
    await file.writeAsBytes(data);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: ClipRRect(
          child: loading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : CustomImageView(
                  height: Get.height,
                  fit: BoxFit.cover,
                  imagePath: _fileName,
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    // onTapImgImage!();
                  },
                ),
          borderRadius: BorderRadius.circular(8.0),
        )),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.center,
            child: CustomImageView(
              svgPath: ImageConstant.imgPlaycirclefill,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
