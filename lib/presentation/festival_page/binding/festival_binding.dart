import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/festival_page/controller/festival_controller.dart';

class FestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FestivalController());
  }
}
