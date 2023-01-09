import '../controller/library_picture_details_controller.dart';
import 'package:get/get.dart';

class LibraryPictureDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LibraryPictureDetailsController());
  }
}
