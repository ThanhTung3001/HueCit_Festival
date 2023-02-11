import 'dart:io';

import 'package:cached_video_player/cached_video_player.dart';
import 'package:video_compress/video_compress.dart';

class LibraryVideoDetailsModel {
  String title = "";
  LibraryVideoDetailsModel({required this.controller});
  CachedVideoPlayerController controller = CachedVideoPlayerController.network(
      "https://sample-videos.com/video123/mp4/240/big_buck_bunny_240p_30mb.mp4");
  int currentTime = 0;
  int totalTime = 0;
}

class DataVideoPlay {
  var listVideo = [
    // LibraryVideoDetailsModel(
    //     controller: CachedVideoPlayerController.network(
    //         "https://player.vimeo.com/external/371817283.sd.mp4?s=56639e00db07ad3f26d837314e3da531bad01b1b&profile_id=164&oauth2_token_id=57447761")),
    // LibraryVideoDetailsModel(
    //   controller: CachedVideoPlayerController.network(
    //       "https://sample-videos.com/video123/mp4/240/big_buck_bunny_240p_30mb.mp4"),
    // ),
    // LibraryVideoDetailsModel(
    //     controller: CachedVideoPlayerController.network(
    //         "https://player.vimeo.com/external/371817283.sd.mp4?s=56639e00db07ad3f26d837314e3da531bad01b1b&profile_id=164&oauth2_token_id=57447761"))
  ];

  var listVideos = [];
  var url = [];
  // init() async {
  //   listVideos = url.map((e) async {
  //     return await GetControllerByUrl(e);
  //   }).toList();

  initController(List<String> urls) {
    listVideo = urls
        .map(
          (e) => LibraryVideoDetailsModel(
            controller: CachedVideoPlayerController.network(e),
          ),
        )
        .toList();
  }
}

// ignore: non_constant_identifier_names
Future<CachedVideoPlayerController> GetControllerByUrl(String path) async {
  await VideoCompress.deleteAllCache();
  MediaInfo? mediaInfo =
      await VideoCompress.compressVideo(path, quality: VideoQuality.LowQuality);
  print(mediaInfo!.filesize.toString());
  File? file = mediaInfo.file;
  CachedVideoPlayerController controller =
      CachedVideoPlayerController.file(file!);
  return controller;
}
