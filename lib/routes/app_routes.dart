import 'package:hue_festival/presentation/splash_screen/splash_screen.dart';
import 'package:hue_festival/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hue_festival/presentation/home_container_screen/home_container_screen.dart';
import 'package:hue_festival/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:hue_festival/presentation/search_screen/search_screen.dart';
import 'package:hue_festival/presentation/search_screen/binding/search_binding.dart';
import 'package:hue_festival/presentation/huenews_screen/huenews_screen.dart';
import 'package:hue_festival/presentation/huenews_screen/binding/huenews_binding.dart';
import 'package:hue_festival/presentation/comingfestival_screen/comingfestival_screen.dart';
import 'package:hue_festival/presentation/comingfestival_screen/binding/comingfestival_binding.dart';
import 'package:hue_festival/presentation/huenews_details_one_screen/huenews_details_one_screen.dart';
import 'package:hue_festival/presentation/huenews_details_one_screen/binding/huenews_details_one_binding.dart';
import 'package:hue_festival/presentation/huenews_details_screen/huenews_details_screen.dart';
import 'package:hue_festival/presentation/huenews_details_screen/binding/huenews_details_binding.dart';
import 'package:hue_festival/presentation/festival_listfestival_category_screen/festival_listfestival_category_screen.dart';
import 'package:hue_festival/presentation/festival_listfestival_category_screen/binding/festival_listfestival_category_binding.dart';
import 'package:hue_festival/presentation/library_picture_details_screen/library_picture_details_screen.dart';
import 'package:hue_festival/presentation/library_picture_details_screen/binding/library_picture_details_binding.dart';
import 'package:hue_festival/presentation/library_video_details_screen/library_video_details_screen.dart';
import 'package:hue_festival/presentation/library_video_details_screen/binding/library_video_details_binding.dart';
import 'package:hue_festival/presentation/picture_details_rotation_screen/picture_details_rotation_screen.dart';
import 'package:hue_festival/presentation/picture_details_rotation_screen/binding/picture_details_rotation_binding.dart';
import 'package:hue_festival/presentation/video_details_rotation_screen/video_details_rotation_screen.dart';
import 'package:hue_festival/presentation/video_details_rotation_screen/binding/video_details_rotation_binding.dart';
import 'package:hue_festival/presentation/picture_details_fullheight_screen/picture_details_fullheight_screen.dart';
import 'package:hue_festival/presentation/picture_details_fullheight_screen/binding/picture_details_fullheight_binding.dart';
import 'package:hue_festival/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hue_festival/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/app_on_boarding/on_boarding_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String newsPage = '/news_page';

  static const String huenewsScreen = '/huenews_screen';

  static const String comingfestivalScreen = '/comingfestival_screen';

  static const String huenewsDetailsOneScreen = '/huenews_details_one_screen';

  static const String huenewsDetailsScreen = '/huenews_details_screen';

  static const String festivalPage = '/festival_page';

  static const String typicalfestivalScreen = '/typicalfestival_screen';

  static const String festivalListfestivalCategoryScreen =
      '/festival_listfestival_category_screen';

  static const String festivalListfestivalCategoryTraditionalfestivalScreen =
      '/festival_listfestival_category_traditionalfestival_screen';

  static const String festivalListfestivalDetailsScreen =
      '/festival_listfestival_details_screen';

  static const String libraryAllPage = '/library_all_page';

  static const String libraryPicturePage = '/library_picture_page';

  static const String libraryPictureTabContainerPage =
      '/library_picture_tab_container_page';

  static const String libraryVideoPage = '/library_video_page';

  static const String libraryPictureDetailsScreen =
      '/library_picture_details_screen';

  static const String libraryVideoDetailsScreen =
      '/library_video_details_screen';

  static const String pictureDetailsRotationScreen =
      '/picture_details_rotation_screen';

  static const String videoDetailsRotationScreen =
      '/video_details_rotation_screen';

  static const String pictureDetailsFullheightScreen =
      '/picture_details_fullheight_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String onBoarding = "/on_boarding";

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: huenewsScreen,
      page: () => HuenewsScreen(),
      bindings: [
        HuenewsBinding(),
      ],
    ),
    GetPage(
      name: comingfestivalScreen,
      page: () => ComingfestivalScreen(),
      bindings: [
        ComingfestivalBinding(),
      ],
    ),
    GetPage(
      name: huenewsDetailsOneScreen,
      page: () => HuenewsDetailsOneScreen(),
      bindings: [
        HuenewsDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: huenewsDetailsScreen,
      page: () => HuenewsDetailsScreen(),
      bindings: [
        HuenewsDetailsBinding(),
      ],
    ),
    // GetPage(
    //   name: typicalfestivalScreen,
    //   page: () => TypicalfestivalScreen(),
    //   bindings: [
    //     TypicalfestivalBinding(),
    //   ],
    // ),
    GetPage(
      name: festivalListfestivalCategoryScreen,
      page: () => FestivalListfestivalCategoryScreen(),
      bindings: [
        FestivalListfestivalCategoryBinding(),
      ],
    ),
    GetPage(
      name: festivalListfestivalCategoryTraditionalfestivalScreen,
      page: () => FestivalListfestivalCategoryScreen(),
      bindings: [
        FestivalListfestivalCategoryBinding(),
      ],
    ),
    // GetPage(
    //   name: festivalListfestivalDetailsScreen,
    //   page: () => FestivalListfestivalDetailsScreen(),
    //   bindings: [
    //     FestivalListfestivalDetailsBinding(),
    //   ],
    // ),
    GetPage(
      name: libraryPictureDetailsScreen,
      page: () => LibraryPictureDetailsScreen(),
      bindings: [
        LibraryPictureDetailsBinding(),
      ],
    ),
    GetPage(
      name: libraryVideoDetailsScreen,
      page: () => LibraryVideoDetailsScreen(),
      bindings: [
        LibraryVideoDetailsBinding(),
      ],
    ),
    GetPage(
      name: pictureDetailsRotationScreen,
      page: () => PictureDetailsRotationScreen(),
      bindings: [
        PictureDetailsRotationBinding(),
      ],
    ),
    GetPage(
      name: videoDetailsRotationScreen,
      page: () => VideoDetailsRotationScreen(),
      bindings: [
        VideoDetailsRotationBinding(),
      ],
    ),
    GetPage(
      name: pictureDetailsFullheightScreen,
      page: () => PictureDetailsFullheightScreen(),
      bindings: [
        PictureDetailsFullheightBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: "/on_boarding",
      page: () => OnBoardingScreeen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
//OnBoardingScreeen