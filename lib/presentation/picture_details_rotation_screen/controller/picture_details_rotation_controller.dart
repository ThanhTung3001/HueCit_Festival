import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/picture_details_rotation_screen/models/picture_details_rotation_model.dart';

class PictureDetailsRotationController extends GetxController {
  Rx<PictureDetailsRotationModel> pictureDetailsRotationModelObj =
      PictureDetailsRotationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
