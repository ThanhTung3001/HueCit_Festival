import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/library_picture_tab_container_page/models/library_picture_tab_container_model.dart';
import 'package:flutter/material.dart';

class LibraryPictureTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  LibraryPictureTabContainerController(this.libraryPictureTabContainerModelObj);

  Rx<LibraryPictureTabContainerModel> libraryPictureTabContainerModelObj;

  late TabController navtabController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
