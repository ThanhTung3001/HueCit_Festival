import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/festival_client.dart';
import 'package:hue_festival/data/models/festival/count_festival_type.dart';
import 'package:hue_festival/data/models/festival/festival_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tuple/tuple.dart';

class FestivalController extends GetxController
    with
        StateMixin<
            Tuple3<List<FestivalModel>, List<FestivalModel>,
                List<CoutFestivalTypeModal>>> {
  FestivalController();

  // Rx<List<FestivalModel>> festivalModelObj;
  Rx<RefreshController> refreshController =
      RefreshController(initialRefresh: false).obs;
  void onRefresh() async {
    // monitor network fetch
    change(Tuple3([], [], []), status: RxStatus.loading());
    await _initData();
    // if failed,use refreshFailed()
    //refreshController.value.refreshCompleted();
  }

  _initData() async {
    try {
      var data = await FestivalClient()
          .getFestivals(page: 1, pageSize: 4, conditions: '{"tieubieu":"1"}');
      //  festivalModelObj(data);
      var dataFestivals = await FestivalClient()
          .getFestivals(page: 1, pageSize: 10, conditions: '{"1":"1"}');
      var countFestivalType = await FestivalClient().getCountFestivalTypes();
      change(Tuple3(data, dataFestivals, countFestivalType),
          status: RxStatus.success());
    } catch (e) {
      change(Tuple3([], [], []), status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    super.onInit();
    _initData();
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
