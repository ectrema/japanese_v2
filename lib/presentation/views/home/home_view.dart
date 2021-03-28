import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japanese_v2/presentation/core/widget/space_red_widget.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        controller.name.value,
      )),
      body: controller.content,
      bottomSheet: SpaceRedWidget(
        context: context,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.index.value,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Acceuil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: "Cours",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rate_review),
            label: "Révision",
          ),
        ],
        onTap: controller.onTapNaviBar,
      ),
    );
  }
}
