import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/library_picture_details_screen/models/library_picture_details_model.dart';

class LibraryPictureDetailsController extends GetxController {
  Rx<LibraryPictureDetailsModel> libraryPictureDetailsModelObj =
      LibraryPictureDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
