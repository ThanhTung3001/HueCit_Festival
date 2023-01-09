import 'package:get/get.dart';
import 'listanh1_item_model.dart';

class HuenewsDetailsOneModel {
  DateTime selectedDateTxt = DateTime.now();

  Rx<String> dateTxt = Rx('Lorem ipsum dolor sit amet');

  RxList<Listanh1ItemModel> listanh1ItemList =
      RxList.filled(5, Listanh1ItemModel());
}
