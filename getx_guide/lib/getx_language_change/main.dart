import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_guide/getx_language_change/controller/language_controller.dart';
import 'package:getx_guide/getx_language_change/localization/app_translations.dart';
import 'package:getx_guide/getx_language_change/services/storage_service.dart';

import 'views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());

  Get.put(LanguageController(), permanent: true);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LanguageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppTranslations(),
        locale: controller.locale.value,
        fallbackLocale: const Locale('en', 'US'),
        home: HomeView(),
      ),
    );
  }
}
