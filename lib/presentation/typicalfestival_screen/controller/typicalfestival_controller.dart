import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/typicalfestival_screen/models/typicalfestival_model.dart';

class TypicalfestivalController extends GetxController {
  Rx<TypicalfestivalModel> typicalfestivalModelObj = TypicalfestivalModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
