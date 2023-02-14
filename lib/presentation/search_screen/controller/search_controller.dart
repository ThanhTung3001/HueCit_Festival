import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }
}
