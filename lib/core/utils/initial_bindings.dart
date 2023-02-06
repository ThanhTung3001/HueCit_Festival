import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/api_client.dart';
import 'package:hue_festival/presentation/news_page/controller/news_controller.dart';

import '../../presentation/festival_page/controller/festival_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    Get.lazyPut(() => FestivalController());
    Get.put(() => NewsController);
  }
}
