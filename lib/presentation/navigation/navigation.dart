import 'package:get/get.dart';
import 'export_routes.dart' as mobile;

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.APP,
      page: () => mobile.AppView(),
      binding: mobile.AppViewControllerBindings(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => mobile.HomeView(),
      binding: mobile.HomeViewControllerBindings(),
    ),
    GetPage(
      name: Routes.LESSON,
      page: () => mobile.LessonView(),
      binding: mobile.LessonViewControllerBindings(),
    ),
    GetPage(
      name: Routes.REVISION,
      page: () => mobile.LessonView(),
      binding: mobile.LessonViewControllerBindings(),
    ),
  ];
}
