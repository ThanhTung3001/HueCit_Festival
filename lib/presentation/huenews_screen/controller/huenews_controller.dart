import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/huenews_screen/models/huenews_model.dart';

class HuenewsController extends GetxController {
  Rx<HuenewsModel> huenewsModelObj = HuenewsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
