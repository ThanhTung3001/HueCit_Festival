import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/comingfestival_screen/models/comingfestival_model.dart';

class ComingfestivalController extends GetxController {
  Rx<ComingfestivalModel> comingfestivalModelObj = ComingfestivalModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
