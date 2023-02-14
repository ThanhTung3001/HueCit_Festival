import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/media_client.dart';
import 'package:hue_festival/data/models/media/media_model.dart';
import 'package:hue_festival/presentation/library_video_page/models/library_video_model.dart';

class LibraryVideoController extends GetxController
    with StateMixin<List<MediaModel>> {
  LibraryVideoController(this.libraryVideoModelObj);

  Rx<LibraryVideoModel> libraryVideoModelObj;
  initAllMedia() async {
    try {
      change([], status: RxStatus.loading());
      var response = await MediaClient().getMedias(type: 1);

      change(response, status: RxStatus.success());
    } catch (e) {
      change(
        [],
        status: RxStatus.error(e.toString()),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    initAllMedia();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
