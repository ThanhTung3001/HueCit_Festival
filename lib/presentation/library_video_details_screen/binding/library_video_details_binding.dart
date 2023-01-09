import '../controller/library_video_details_controller.dart';
import 'package:get/get.dart';

class LibraryVideoDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LibraryVideoDetailsController());
  }
}
