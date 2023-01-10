import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_viewer/video_viewer.dart';

import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';

import 'controller/library_video_details_controller.dart';

class LibraryVideoDetailsScreen extends StatefulWidget {
  const LibraryVideoDetailsScreen({Key? key}) : super(key: key);

  @override
  State<LibraryVideoDetailsScreen> createState() =>
      _LibraryVideoDetailsScreenState();
}

class _LibraryVideoDetailsScreenState extends State<LibraryVideoDetailsScreen> {
  var controllerVideo = Get.put(LibraryVideoDetailsController());
  VideoPlayerController _controller = VideoPlayerController.network(
      "https://v16-webapp.tiktok.com/50c86772796db88b87c77634b8584677/63bda9e7/video/tos/useast2a/tos-useast2a-pve-0037-aiso/og5d3gfeQaJcFtOJYSAAoutxe43rNae1eIKs44/?a=1988&ch=0&cr=0&dr=0&lr=tiktok&cd=0%7C0%7C1%7C0&cv=1&br=3078&bt=1539&cs=0&ds=3&ft=4b~OyM3a8Zmo05WHW64jVMaBPpWrKsdm&mime_type=video_mp4&qs=0&rc=NDlmM2llO2U3OGU7NmRnaEBpaml5ZDc6ZmV5aDMzZjgzM0BfMWAxYC0wNjExLzMtLzVhYSMzY3BwcjRfMHFgLS1kL2Nzcw%3D%3D&l=20230110120925FAF30BE3E2C2942A1815&btag=80000");
  CarouselController _carouselController = CarouselController();
  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    super.initState();
    //_carouselController.
    // _controller = VideoPlayerController.network(
    //     "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4")
    //   ..initialize().then((_) {
    //     _controller.play();
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     //setState(() {});
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.black90001,
        body: Container(
            //color: Colors.red,
            width: size.width,
            child: Stack(
              children: [
                Positioned.fill(
                    // bottom: 0,
                    child: PageView.builder(
                        scrollDirection: Axis.vertical,
                        onPageChanged: ((value) {
                          controllerVideo.libraryVideoDetailsModelObj.value
                              .listVideo[value].controller
                              .pause();
                        }),
                        itemCount: controllerVideo
                            .libraryVideoDetailsModelObj.value.listVideo.length,
                        itemBuilder: ((context, index) => Container(
                              height: Get.height * 0.95,
                              width: Get.width,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: VideoPlayerTiktok(
                                      controller: controllerVideo
                                          .libraryVideoDetailsModelObj
                                          .value
                                          .listVideo[index]
                                          .controller,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      child: Container(
                                          width: size.width,
                                          margin: getMargin(top: 99),
                                          padding:
                                              getPadding(top: 18, bottom: 18),
                                          decoration: AppDecoration
                                              .gradientBlack90000Black900b201,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 16),
                                                    child: Text(
                                                        "msg_h_i_ua_ghe_truy_n"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProBold16WhiteA700
                                                            .copyWith(
                                                                height: 1.25))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                343.00),
                                                        margin:
                                                            getMargin(top: 8),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "msg_h_i_ua_ghe_truy_n3"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700Cc,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.43)),
                                                                  TextSpan(
                                                                      text: " ",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700Cc,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.43)),
                                                                  TextSpan(
                                                                      text: "lbl_h_i"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700Cc,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.43)),
                                                                  TextSpan(
                                                                      text: "lbl"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700Cc,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.43)),
                                                                  TextSpan(
                                                                      text: "  "
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700Cc,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.43)),
                                                                  TextSpan(
                                                                      text: "lbl_xem_th_m"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'SF Pro',
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          height:
                                                                              1.43))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrame14,
                                                    height:
                                                        getVerticalSize(6.00),
                                                    width: getHorizontalSize(
                                                        375.00),
                                                    margin: getMargin(
                                                        top: 10, bottom: 13))
                                              ])))
                                ],
                              ),
                            )))),
                Positioned(
                  top: 45,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgArrowleft24x24,
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(left: 16, top: 12),
                      onTap: () {
                        print("Tapp");
                        onTapImgArrowleft();
                      }),
                ),
              ],
            )));
  }

  onTapImgArrowleft() {
    Get.back();
    print("OnTap");
    // _controller.pause();
    controllerVideo.libraryVideoDetailsModelObj.value.listVideo.forEach((e) {
      e.controller.pause();
    });
  }

  onTapImgRectangleTwo() {
    Get.toNamed(AppRoutes.libraryPictureDetailsScreen);
  }

  onTapXoaymnhnh() {
    Get.toNamed(AppRoutes.videoDetailsRotationScreen);
  }
}

class VideoPlayerTiktok extends StatefulWidget {
  VideoPlayerTiktok({Key? key, required this.controller}) : super(key: key);
  VideoPlayerController controller;

  @override
  State<VideoPlayerTiktok> createState() => _VideoPlayerTiktokState();
}

class _VideoPlayerTiktokState extends State<VideoPlayerTiktok> {
  // late VideoPlayerController _controller;
  _initState() async {
    await widget.controller.initialize();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _initState();
    //print("Init");
    // print(widget.controller.value.isInitialized);
    widget.controller = widget.controller
      ..initialize().then((_) {
        widget.controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        // setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: widget.controller.value.aspectRatio,
              child: InkWell(
                child: VideoPlayer(widget.controller),
                onTap: () {
                  if (widget.controller.value.isPlaying) {
                    widget.controller.pause();
                  } else {
                    widget.controller.play();
                  }
                },
              ),
            )
          : Center(
              child: CupertinoActivityIndicator(
                radius: 20.0,
                animating: false,
                color: Colors.white,
              ),
            ),
    );
  }
}
