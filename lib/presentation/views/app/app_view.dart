import 'package:get/get.dart';
import '../../core/widget/space_red_widget.dart';
import 'app_view_controller.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../navigation/routes.dart';
import 'package:flutter/material.dart';
import '../../navigation/export_routes.dart';

class AppView extends GetView<AppViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            controller.name.value,
          ),
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.HOME,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Routes.HOME:
              return GetPageRoute(
                page: () => HomeView(),
                binding: HomeViewControllerBindings(),
                routeName: Routes.HOME,
                transitionDuration: Duration(microseconds: 0),
              );
              break;
            case Routes.LESSON:
              return GetPageRoute(
                page: () => LessonView(),
                binding: LessonViewControllerBindings(),
                routeName: Routes.LESSON,
                transitionDuration: Duration(microseconds: 0),
              );
              break;
              case Routes.REVISION:
              return GetPageRoute(
                page: () => RevisionView(),
                binding: RevisionViewControllerBindings(),
                routeName: Routes.REVISION,
                transitionDuration: Duration(microseconds: 0),
              );
              break;
            default:
              return GetPageRoute();
          }
        },
      ),
      bottomSheet: SpaceRedWidget(
        context: context,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.index.value,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.home),
              label: "Acceuil",
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.layers),
              label: "Cours",
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.messageDraw),
              label: "Révision",
            ),
          ],
          onTap: (index) {
            if (index != controller.index.value) {
              controller.onTapNaviBar(index);
              switch (index) {
                case 0:
                  Get.offAndToNamed(Routes.HOME, id: 1);
                  break;
                case 1:
                  Get.offAndToNamed(Routes.LESSON, id: 1);
                  break;
                // case 2:
                //   Get.offAndToNamed(Routes.MANAGER, id: 1);
                //   break;
              }
            }
          },
        ),
      ),
    );
  }
}
