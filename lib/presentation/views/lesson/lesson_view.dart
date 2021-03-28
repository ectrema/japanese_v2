import 'lesson_view_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LessonView extends GetView<LessonViewController> {
  LessonView({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('data'),
    );
  }
}