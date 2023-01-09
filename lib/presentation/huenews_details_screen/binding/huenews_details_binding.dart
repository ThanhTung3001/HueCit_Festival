import '../controller/huenews_details_controller.dart';
import 'package:get/get.dart';

class HuenewsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HuenewsDetailsController());
  }
}
