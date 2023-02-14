import 'package:get/get.dart';
import 'package:hue_festival/presentation/library_all_page/controller/library_all_controller.dart';

import '../../library_picture_details_screen/controller/library_picture_details_controller.dart';

class LibAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LibraryPictureDetailsController());
    Get.lazyPut(() => LibraryAllController);
  }
}
