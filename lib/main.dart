import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/core/theme_data.dart';
import 'presentation/navigation/navigation.dart';
import 'presentation/navigation/routes.dart';

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
