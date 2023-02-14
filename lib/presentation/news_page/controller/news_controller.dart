import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/event_client.dart';
import 'package:hue_festival/data/apiClient/news_client.dart';
import 'package:hue_festival/data/models/events/events_model.dart';
import 'package:hue_festival/data/models/new/new_model.dart';
import 'package:hue_festival/presentation/news_page/models/news_model.dart';
import 'package:tuple/tuple.dart';

class NewsController extends GetxController
    with StateMixin<Tuple2<NewModel, List<EventModel>>> {
  NewsController(this.newsModelObj);

  Rx<NewsModel> newsModelObj;

  initNews() async {
    try {
      change(Tuple2(NewModel(), []), status: RxStatus.loading());
      var responseClient = await NewClient()
          .getListNewByCategoryId(categoryId: AppConstances.strCategoryIdNews);
      var responseEvent = await EventClient().getEvents();
      change(Tuple2(responseClient, responseEvent), status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error("Có lỗi xãy ra"));
    }
  }

  @override
  void onInit() {
    super.onInit();
    initNews();
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
