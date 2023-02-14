import '../controller/video_details_rotation_controller.dart';
import 'package:get/get.dart';

class VideoDetailsRotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoDetailsRotationController());
  }
}
