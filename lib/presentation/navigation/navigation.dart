import 'package:get/get.dart';
import 'package:japanese_v2/presentation/views/home/home_bindings.dart' as mobile;
import 'package:japanese_v2/presentation/views/home/home_view.dart' as mobile;

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => mobile.HomeView(),
      binding:
          mobile.HomeControllerBinding(),
    ),
  ];
}
