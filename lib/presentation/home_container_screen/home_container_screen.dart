import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:hue_festival/core/app_export.dart';
import 'package:hue_festival/presentation/festival_page/festival_page.dart';
import 'package:hue_festival/presentation/home_page/home_page.dart';
import 'package:hue_festival/presentation/library_picture_tab_container_page/library_picture_tab_container_page.dart';
import 'package:hue_festival/presentation/news_page/news_page.dart';
import 'package:hue_festival/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: AppRoutes.homePage,
            onGenerateRoute: (routeSetting) => GetPageRoute(
                page: () => getCurrentPage(routeSetting.name!),
                transition: Transition.noTransition)),
        bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        }));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.HomePage:
        return AppRoutes.homePage;
      case BottomBarEnum.NewPage:
        return AppRoutes.newsPage;
      case BottomBarEnum.FestivalPage:
        return AppRoutes.festivalPage;
      case BottomBarEnum.LibraryPage:
        return AppRoutes.libraryPictureTabContainerPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.newsPage:
        return NewsPage();
      case AppRoutes.festivalPage:
        return FestivalPage();
      case AppRoutes.libraryPictureTabContainerPage:
        return LibraryPictureTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
