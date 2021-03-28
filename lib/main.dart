import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japanese_v2/presentation/core/theme_data.dart';
import 'package:japanese_v2/presentation/navigation/navigation.dart';
import 'package:japanese_v2/presentation/navigation/routes.dart';

Future<void> main() async {
  String initialRoute = await Routes.initialRoute;
  runApp(
    GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
      getPages: Nav.routes,
      initialRoute: initialRoute,
    ),
  );
}
