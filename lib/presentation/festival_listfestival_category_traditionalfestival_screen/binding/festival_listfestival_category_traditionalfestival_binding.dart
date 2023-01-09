import '../controller/festival_listfestival_category_traditionalfestival_controller.dart';
import 'package:get/get.dart';

class FestivalListfestivalCategoryTraditionalfestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => FestivalListfestivalCategoryTraditionalfestivalController());
  }
}
