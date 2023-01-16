import 'package:group_button/group_button.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/festival_listfestival_category_screen/models/festival_listfestival_category_model.dart';

class FestivalListfestivalCategoryController extends GetxController {
  Rx<FestivalListfestivalCategoryModel> festivalListfestivalCategoryModelObj =
      FestivalListfestivalCategoryModel().obs;
  var controllerButton = GroupButtonController(selectedIndex: 1).obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
