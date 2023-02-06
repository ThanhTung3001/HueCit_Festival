import 'package:group_button/group_button.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/data/apiClient/festival_client.dart';
import 'package:hue_festival/data/models/festival/festival_model.dart';
import 'package:hue_festival/presentation/festival_listfestival_category_screen/models/festival_listfestival_category_model.dart';

class FestivalListfestivalCategoryController extends GetxController
    with StateMixin<List<FestivalModel>> {
  Rx<FestivalListfestivalCategoryModel> festivalListfestivalCategoryModelObj =
      FestivalListfestivalCategoryModel().obs;
  var controllerButton = GroupButtonController(selectedIndex: 1).obs;

  initData() async {
    try {
      var data = await FestivalClient().getFestivals(conditions: "{'1':'1'}");
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error("Có lỗi xảy ra "));
    }
  }

  @override
  void onInit() {
    super.onInit();
    initData();
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
