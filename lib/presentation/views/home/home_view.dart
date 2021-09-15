import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/widget/space_red_widget.dart';
import '../../navigation/export_routes.dart';

class HomeView extends GetView<HomeViewController> {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SpaceRedWidget(
            context: Get.context,
          ),
          Container(
            height: MediaQuery.of(Get.context).size.height / 3,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Bienvenue',
              style: Theme.of(Get.context).textTheme.bodyText2.copyWith(
                    fontSize: 50,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'ようそこ',
                style: Theme.of(Get.context).textTheme.bodyText2.copyWith(
                      fontSize: 50,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
