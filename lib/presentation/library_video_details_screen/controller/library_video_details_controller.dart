import 'package:cached_video_player/cached_video_player.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/library_video_details_screen/models/library_video_details_model.dart';

class LibraryVideoDetailsController extends GetxController {
  Rx<DataVideoPlay> libraryVideoDetailsModelObj = DataVideoPlay().obs;
  Rx<CachedVideoPlayerController> controllerCurrent =
      CachedVideoPlayerController.network("").obs;
  Rx<int> prevVideo = 0.obs;
  Rx<double> timeCurrent = 0.0.obs;

  initVideo(index) async {
    var controller =
        libraryVideoDetailsModelObj.value.listVideo[index].controller;
    await loadController(controller);
    initSlider(index);
  }

  initSlider(index) {
    var e = libraryVideoDetailsModelObj.value.listVideo[index];

    if (index > 0) {
      libraryVideoDetailsModelObj.value.listVideo[prevVideo.value].controller
          .removeListener(
        () {},
      );
    }
    e.controller.addListener(() {
      //if()

      var duration = (e.controller.value.duration);
      var current = (e.controller.value.position);
      e.totalTime = duration.inSeconds;
      e.currentTime = current.inSeconds;

      if (e.controller.value.isPlaying) {
        timeCurrent(current.inSeconds.toDouble() * (100 / e.totalTime));
      }
      update();
    });
  }

  changeVideo(int index) async {
    timeCurrent(0);
    var controller =
        libraryVideoDetailsModelObj.value.listVideo[index].controller;
    if (controller.value.isInitialized) {
      controller.play();
    } else {
      await loadController(controller);
    }

    var prevController =
        libraryVideoDetailsModelObj.value.listVideo[prevVideo.value].controller;

    if (prevController.value.isInitialized) {
      prevController.pause();
      prevVideo(index);
    }
    initSlider(index);
  }

  stock(index, double value) {
    print(value);
    var video = libraryVideoDetailsModelObj.value.listVideo[index];
    var timeCurrentStock = Duration(seconds: (value * video.totalTime) ~/ 100);
    print(video.totalTime);
    libraryVideoDetailsModelObj.value.listVideo[index].currentTime =
        timeCurrentStock.inSeconds;
    video.controller.seekTo(timeCurrentStock);
    timeCurrent(value);
    //print(timeCurrentStock.inSeconds.toDouble() * 100 / video.totalTime);
  }

  loadController(CachedVideoPlayerController controller) async {
    try {
      await controller.initialize();

      //controllerCurrent(controller);
      controller.play();
      //  update();
    } catch (e) {
      throw e;
    }
  }

  rotateScreen() {}

  @override
  void onInit() {
    super.onInit();
    // DataVideoPlay().init();
    // libraryVideoDetailsModelObj.value.listVideo.forEach((e) {});
    // // libraryVideoDetailsModelObj.value.listVideo[0].controller.addListener(() {
    // //   var duration = (libraryVideoDetailsModelObj
    // //       .value.listVideo[0].controller.value.duration);
    // //   var current = (libraryVideoDetailsModelObj
    // //       .value.listVideo[0].controller.value.position);
    // //   print("Current: ${current.inSeconds}");
    // //   print("Seconds: ${duration.inSeconds}");
    // // });
  }

  @override
  void onReady() {
    super.onReady();
    //print("ready");
  }

  @override
  void onClose() {
    super.onClose();
  }
}
