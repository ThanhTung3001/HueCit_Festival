import 'package:get/get.dart';
import 'listthirtyone_item_model.dart';
import 'listeightytwo_item_model.dart';
import 'listanh_four_item_model.dart';

class HomeModel {
  RxList<ListthirtyoneItemModel> listthirtyoneItemList =
      RxList.filled(4, ListthirtyoneItemModel());

  RxList<ListeightytwoItemModel> listeightytwoItemList =
      RxList.filled(2, ListeightytwoItemModel());

  RxList<ListanhFourItemModel> listanhFourItemList =
      RxList.filled(5, ListanhFourItemModel());
}
