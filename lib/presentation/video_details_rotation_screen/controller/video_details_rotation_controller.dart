import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/video_details_rotation_screen/models/video_details_rotation_model.dart';

class VideoDetailsRotationController extends GetxController {
  Rx<VideoDetailsRotationModel> videoDetailsRotationModelObj =
      VideoDetailsRotationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
