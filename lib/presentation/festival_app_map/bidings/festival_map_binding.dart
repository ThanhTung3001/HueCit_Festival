import 'package:hue_festival/core/app_export.dart';

import '../controllers/festival_map_controller.dart';

class FestivalMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FestivalMapController());
  }
}
