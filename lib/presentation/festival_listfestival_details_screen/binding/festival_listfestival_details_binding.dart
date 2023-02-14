import '../controller/festival_listfestival_details_controller.dart';
import 'package:get/get.dart';

class FestivalListfestivalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FestivalListfestivalDetailsController());
  }
}
