import 'package:get/get.dart';

class AppViewController extends GetxController {
  RxInt index = 0.obs;
  RxString name = "Accueil".obs;

  void onTapNaviBar(int value) {
    index.value = value;
    if (value == 0) {
      name.value = "Accueil";
      // navigate(HomeContentPage());
    } else if (value == 1) {
      name.value = "Cours";
      // navigate(CoursModule());
    } else if (value == 2) {
      name.value = "Révision";
      // navigate(RevisionModule());
    }
  }
}
