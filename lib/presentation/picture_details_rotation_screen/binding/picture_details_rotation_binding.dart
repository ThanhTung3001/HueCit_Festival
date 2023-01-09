import '../controller/picture_details_rotation_controller.dart';
import 'package:get/get.dart';

class PictureDetailsRotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PictureDetailsRotationController());
  }
}
