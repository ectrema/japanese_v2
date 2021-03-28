import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  
  RxInt index = 0.obs;

  
  Widget content;

  
  RxString name = "Accueil".obs;

  _HomePresenterBase() {
    // content = HomeContentPage();
  }

  void onTapNaviBar(int value) {
    index.value = value;
    if (value == 0) {
      name.value = "Accueil";
      // navigate(HomeContentPage());
    } else if(value == 1) {
      name.value = "Cours";
      // navigate(CoursModule());
    } else if (value == 2) {
      name.value = "Révision";
      // navigate(RevisionModule());
    }
  }

  void navigate(Widget newContent) {
    content = newContent;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
