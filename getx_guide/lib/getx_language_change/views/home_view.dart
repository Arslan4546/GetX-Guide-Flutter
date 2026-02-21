import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_language_change/controller/language_controller.dart';
import 'package:getx_guide/getx_language_change/localization/app_translations.dart';
import '../localization/locale_keys.dart';

class HomeView extends StatelessWidget {
  final LanguageController controller = Get.find();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.appTitle.tr)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.welcome.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),

            Text(
              LocaleKeys.description.tr,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 30),

            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.dashboard),
                    title: Text(LocaleKeys.dashboard.tr),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(LocaleKeys.profile.tr),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: Text(LocaleKeys.settings.tr),
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: Text(LocaleKeys.logout.tr),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              LocaleKeys.changeLanguage.tr,
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () =>
                  controller.changeLanguage(const Locale('en', 'US')),
              child: Text(LocaleKeys.english.tr),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () =>
                  controller.changeLanguage(const Locale('ur', 'PK')),
              child: Text(LocaleKeys.urdu.tr),
            ),

            const SizedBox(height: 10),

            OutlinedButton(
              onPressed: controller.setSystemLanguage,
              child: Text(LocaleKeys.system.tr),
            ),
          ],
        ),
      ),
    );
  }
}
