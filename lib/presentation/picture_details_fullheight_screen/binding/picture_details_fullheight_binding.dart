import '../controller/picture_details_fullheight_controller.dart';
import 'package:get/get.dart';

class PictureDetailsFullheightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PictureDetailsFullheightController());
  }
}
