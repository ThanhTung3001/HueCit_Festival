import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/huenews_details_screen/models/huenews_details_model.dart';

class HuenewsDetailsController extends GetxController {
  Rx<HuenewsDetailsModel> huenewsDetailsModelObj = HuenewsDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
