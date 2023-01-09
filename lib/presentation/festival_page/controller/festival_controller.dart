import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/festival_page/models/festival_model.dart';

class FestivalController extends GetxController {
  FestivalController(this.festivalModelObj);

  Rx<FestivalModel> festivalModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
