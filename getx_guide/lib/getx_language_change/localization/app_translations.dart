import 'package:get/get.dart';
import 'locale_keys.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      LocaleKeys.appTitle: 'Language Demo App',
      LocaleKeys.welcome: 'Welcome Back, Arslan!',
      LocaleKeys.description:
          'This screen demonstrates complete language switching using GetX in MVVM structure.',
      LocaleKeys.changeLanguage: 'Change Language',
      LocaleKeys.english: 'English',
      LocaleKeys.urdu: 'Urdu',
      LocaleKeys.system: 'System Language',
      LocaleKeys.profile: 'Profile',
      LocaleKeys.dashboard: 'Dashboard',
      LocaleKeys.settings: 'Settings',
      LocaleKeys.logout: 'Logout',
    },

    'ur_PK': {
      LocaleKeys.appTitle: 'زبان ڈیمو ایپ',
      LocaleKeys.welcome: 'خوش آمدید ارسلان!',
      LocaleKeys.description:
          'یہ اسکرین GetX کے ذریعے مکمل زبان کی تبدیلی کو ظاہر کرتی ہے۔',
      LocaleKeys.changeLanguage: 'زبان تبدیل کریں',
      LocaleKeys.english: 'انگریزی',
      LocaleKeys.urdu: 'اردو',
      LocaleKeys.system: 'سسٹم زبان',
      LocaleKeys.profile: 'پروفائل',
      LocaleKeys.dashboard: 'ڈیش بورڈ',
      LocaleKeys.settings: 'سیٹنگز',
      LocaleKeys.logout: 'لاگ آؤٹ',
    },
  };
}
