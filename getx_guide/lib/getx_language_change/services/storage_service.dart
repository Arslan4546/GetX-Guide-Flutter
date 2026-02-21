import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  late SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  String get languageCode => _prefs.getString('languageCode') ?? 'system';

  Future<void> saveLanguage(String code) async {
    await _prefs.setString('languageCode', code);
  }
}
