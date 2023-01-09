import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/news_page/models/news_model.dart';

class NewsController extends GetxController {
  NewsController(this.newsModelObj);

  Rx<NewsModel> newsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
