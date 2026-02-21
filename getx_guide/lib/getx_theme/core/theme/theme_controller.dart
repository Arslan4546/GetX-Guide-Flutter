import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_theme/services/theme_service/theme_storage_service.dart';

class ThemeController extends GetxController {
  final StorageService _storage = Get.find();

  var themeMode = ThemeMode.system.obs;

  @override
  void onInit() {
    super.onInit();

    String savedMode = _storage.themeMode;

    if (savedMode == 'light') {
      themeMode.value = ThemeMode.light;
    } else if (savedMode == 'dark') {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.system;
    }

    Get.changeThemeMode(themeMode.value);
  }

  void changeTheme(ThemeMode mode) {
    themeMode.value = mode;
    Get.changeThemeMode(mode);

    if (mode == ThemeMode.light) {
      _storage.saveTheme('light');
    } else if (mode == ThemeMode.dark) {
      _storage.saveTheme('dark');
    } else {
      _storage.saveTheme('system');
    }
  }
}
