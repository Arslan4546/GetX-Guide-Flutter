import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/storage_service.dart';

class LanguageController extends GetxController {
  final StorageService _storage = Get.find();

  var locale = const Locale('en', 'US').obs;

  @override
  void onInit() {
    super.onInit();

    String saved = _storage.languageCode;

    if (saved == 'system') {
      locale.value = Get.deviceLocale ?? const Locale('en', 'US');
    } else if (saved == 'ur') {
      locale.value = const Locale('ur', 'PK');
    } else {
      locale.value = const Locale('en', 'US');
    }

    Get.updateLocale(locale.value);
  }

  void changeLanguage(Locale newLocale) {
    locale.value = newLocale;
    Get.updateLocale(newLocale);

    if (newLocale.languageCode == 'ur') {
      _storage.saveLanguage('ur');
    } else {
      _storage.saveLanguage('en');
    }
  }

  void setSystemLanguage() {
    Locale system = Get.deviceLocale ?? const Locale('en', 'US');
    locale.value = system;
    Get.updateLocale(system);
    _storage.saveLanguage('system');
  }
}
