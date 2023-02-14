import '../controller/comingfestival_controller.dart';
import 'package:get/get.dart';

class ComingfestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComingfestivalController());
  }
}
