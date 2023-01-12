import 'package:cached_video_player/cached_video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  CachedVideoPlayerController _controller = CachedVideoPlayerController.network(
      "https://v16-webapp.tiktok.com/402d3e52ef39139c31a128ce16587b94/63bfbb41/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/oAQyogDKVoiuAcnjdeVsbMGU2HaCFDDQP8VeBE/?a=1988&ch=0&cr=0&dr=0&lr=tiktok&cd=0%7C0%7C1%7C0&cv=1&br=2110&bt=1055&cs=0&ds=3&ft=4b~OyM3a8Zmo0hf7W64jVN_HEpWrKsdm&mime_type=video_mp4&qs=0&rc=M2Y1N2ZlNDtpNDY1Ojg0OkBpajk4ZGc6ZmtvaDMzZjgzM0BhXjViYTNeNV4xMjYwMDEzYSNhcGY0cjRfMHBgLS1kL2Nzcw%3D%3D&l=202301120148031C006AE1ACA28C05ECAF&btag=80000");
  CarouselController _carouselController = CarouselController();
  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    super.initState();
    controllerVideo.initVideo(0);
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
                    child: Obx(() {
                  return PageView.builder(
                      scrollDirection: Axis.vertical,
                      onPageChanged: controllerVideo.changeVideo,
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
                                                  padding: getPadding(left: 16),
                                                  child: Text(
                                                      "msg_h_i_ua_ghe_truy_n"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProBold16WhiteA700
                                                          .copyWith(
                                                              height: 1.25))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      margin: getMargin(top: 8),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_h_i_ua_ghe_truy_n3"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700Cc,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text: " ",
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700Cc,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_h_i"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700Cc,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text: "lbl"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700Cc,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "  ".tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700Cc,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_xem_th_m"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'SF Pro',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        height:
                                                                            1.43))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))),
                                              Obx(() => SliderTheme(
                                                    data:
                                                        SliderTheme.of(context)
                                                            .copyWith(
                                                      thumbShape:
                                                          RoundSliderThumbShape(
                                                              enabledThumbRadius:
                                                                  6.0),
                                                    ),
                                                    child: Slider(
                                                        inactiveColor: Colors
                                                            .grey
                                                            .withOpacity(0.2),
                                                        activeColor:
                                                            Colors.grey,

                                                        // thumbColor:Colors.red,
                                                        min: 0,
                                                        max: 100,
                                                        value: controllerVideo
                                                            .timeCurrent.value,
                                                        onChanged:
                                                            (double value) {
                                                          controllerVideo.stock(
                                                              index, value);
                                                        }),
                                                  ))
                                            ])))
                              ],
                            ),
                          )));
                })),
                Positioned(
                  top: 45,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgArrowleft24x24,
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(left: 16, top: 12),
                      onTap: () {
                        // print("Tapp");
                        onTapImgArrowleft();
                      }),
                ),
              ],
            )));
  }

  onTapImgArrowleft() {
    Get.back();
    // print("OnTap");
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
  CachedVideoPlayerController controller;

  @override
  State<VideoPlayerTiktok> createState() => _VideoPlayerTiktokState();
}

class _VideoPlayerTiktokState extends State<VideoPlayerTiktok> {
  // late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(
        builder: ((context) {
          if (widget.controller.value.isPlaying) {
            print("Playing");
          }
          return AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: InkWell(
              child: CachedVideoPlayer(widget.controller),
              onTap: () {
                if (widget.controller.value.isPlaying) {
                  widget.controller.pause();
                  setState(() {});
                } else {
                  widget.controller.play();
                  print(widget.controller);
                  setState(() {});
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
