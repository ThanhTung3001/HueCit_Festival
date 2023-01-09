import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/picture_details_fullheight_screen/models/picture_details_fullheight_model.dart';

class PictureDetailsFullheightController extends GetxController {
  Rx<PictureDetailsFullheightModel> pictureDetailsFullheightModelObj =
      PictureDetailsFullheightModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
