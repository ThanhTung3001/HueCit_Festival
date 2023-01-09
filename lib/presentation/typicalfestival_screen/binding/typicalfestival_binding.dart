import '../controller/typicalfestival_controller.dart';
import 'package:get/get.dart';

class TypicalfestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypicalfestivalController());
  }
}
