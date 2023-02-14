import '../controller/huenews_details_one_controller.dart';
import 'package:get/get.dart';

class HuenewsDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HuenewsDetailsOneController());
  }
}
