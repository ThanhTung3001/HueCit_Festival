import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/library_video_details_screen/models/library_video_details_model.dart';

class LibraryVideoDetailsController extends GetxController {
  Rx<LibraryVideoDetailsModel> libraryVideoDetailsModelObj =
      LibraryVideoDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
