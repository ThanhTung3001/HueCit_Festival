import 'package:hue_festival/core/app_export.dart';

class ApiClient extends GetConnect {
  @override
  void onInit() {
    // init base url api app
    httpClient.baseUrl = AppConstances.ENTRY_POINT;
  }
}
