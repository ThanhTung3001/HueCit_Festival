import 'package:video_viewer/video_viewer.dart';

class LibraryVideoDetailsModel {
  VideoPlayerController controller = VideoPlayerController.network(
      "https://v16-webapp.tiktok.com/50c86772796db88b87c77634b8584677/63bda9e7/video/tos/useast2a/tos-useast2a-pve-0037-aiso/og5d3gfeQaJcFtOJYSAAoutxe43rNae1eIKs44/?a=1988&ch=0&cr=0&dr=0&lr=tiktok&cd=0%7C0%7C1%7C0&cv=1&br=3078&bt=1539&cs=0&ds=3&ft=4b~OyM3a8Zmo05WHW64jVMaBPpWrKsdm&mime_type=video_mp4&qs=0&rc=NDlmM2llO2U3OGU7NmRnaEBpaml5ZDc6ZmV5aDMzZjgzM0BfMWAxYC0wNjExLzMtLzVhYSMzY3BwcjRfMHFgLS1kL2Nzcw%3D%3D&l=20230110120925FAF30BE3E2C2942A1815&btag=80000");
}

class DataVideoPlay {
  var listVideo = List.filled(10, LibraryVideoDetailsModel());
}
