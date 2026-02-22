import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_routes_management/routes/app_routes.dart';
import 'package:getx_guide/getx_routes_management/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
