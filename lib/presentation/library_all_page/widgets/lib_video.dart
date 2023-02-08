import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:hue_festival/core/utils/image_constant.dart';
import 'package:hue_festival/core/utils/size_utils.dart';
import 'package:hue_festival/widgets/custom_image_view.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class FirstFrame extends StatefulWidget {
  String path;
  Callback onTap;
  FirstFrame({required this.path, required this.onTap});
  @override
  _FirstFrameState createState() => _FirstFrameState();
}

class _FirstFrameState extends State<FirstFrame> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.path)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.pause();
        _isPlaying = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _isPlaying
            ? ClipRRect(
                child: VideoPlayer(_controller),
                borderRadius: BorderRadius.circular(8.0),
              )
            : Container(),
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
              margin: getMargin(
                right: 11,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
