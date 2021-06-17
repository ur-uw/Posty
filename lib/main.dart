import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:posty/constants/app_themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Posty",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
    ),
  );
}
