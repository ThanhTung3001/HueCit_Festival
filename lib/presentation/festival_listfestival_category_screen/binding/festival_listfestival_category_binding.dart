import '../controller/festival_listfestival_category_controller.dart';
import 'package:get/get.dart';

class FestivalListfestivalCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FestivalListfestivalCategoryController());
  }
}
