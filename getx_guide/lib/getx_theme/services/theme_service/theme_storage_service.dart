import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  late SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  String get themeMode => _prefs.getString('themeMode') ?? 'system';

  Future<void> saveTheme(String mode) async {
    await _prefs.setString('themeMode', mode);
  }
}
