import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/news_client.dart';
import 'package:hue_festival/data/models/new/new_model.dart';

class HuenewsController extends GetxController with StateMixin<NewModel> {
  Rx<NewModel> huenewsModelObj = NewModel().obs;

  initNews() async {
    try {
      change(NewModel(), status: RxStatus.loading());
      var response = await NewClient().getListNewByCategoryId(
          categoryId: AppConstances.strCategoryIdNews, page: 0, pageSize: 10);
      huenewsModelObj(response);
      change(response, status: RxStatus.success());
    } catch (e) {
      change(NewModel(), status: RxStatus.error(e.toString()));
    }
  }

  loadMore(int page) async {
    try {
      //change(NewModel(), status: RxStatus.loading());
      var response = await NewClient().getListNewByCategoryId(
          categoryId: AppConstances.strCategoryIdNews,
          page: page,
          pageSize: 10);
      huenewsModelObj.value.newsList!.addAll(response.newsList ?? []);

      var dataAdd = huenewsModelObj;
      change(dataAdd.value, status: RxStatus.success());
    } catch (e) {
      change(NewModel(), status: RxStatus.error(e.toString()));
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
