import 'package:get/get.dart';
import 'package:hue_festival/presentation/news_page/controller/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsController);
  }
}
