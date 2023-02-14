import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/media_client.dart';
import 'package:hue_festival/data/models/media/media_model.dart';
import 'package:hue_festival/presentation/library_picture_page/models/library_picture_model.dart';

class LibraryPictureController extends GetxController
    with StateMixin<List<MediaModel>> {
  LibraryPictureController(this.libraryPictureModelObj);

  Rx<LibraryPictureModel> libraryPictureModelObj;
  initAllMedia() async {
    try {
      change([], status: RxStatus.loading());
      var response = await MediaClient().getMedias(type: 0);
      change(response, status: RxStatus.success());
    } catch (e) {
      change(
        [],
        status: RxStatus.error(e.toString()),
      );
    }
  }

  @override
  void onReady() {
    super.onReady();
    initAllMedia();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
