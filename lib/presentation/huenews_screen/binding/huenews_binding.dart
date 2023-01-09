import '../controller/huenews_controller.dart';
import 'package:get/get.dart';

class HuenewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HuenewsController());
  }
}
