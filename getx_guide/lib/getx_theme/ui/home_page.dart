import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_theme/core/theme/app_theme.dart';
import 'package:getx_guide/getx_theme/core/theme/theme_controller.dart';

class MyApp extends StatelessWidget {
  final ThemeController controller = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: controller.themeMode.value,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final ThemeController controller = Get.find();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("Theme Preview"),
          actions: [
            PopupMenuButton<ThemeMode>(
              icon: const Icon(Icons.palette_outlined),
              onSelected: controller.changeTheme,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: ThemeMode.system,
                  child: Text("System Theme"),
                ),
                const PopupMenuItem(
                  value: ThemeMode.light,
                  child: Text("Light Theme"),
                ),
                const PopupMenuItem(
                  value: ThemeMode.dark,
                  child: Text("Dark Theme"),
                ),
              ],
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🔹 Headings
              Text(
                "Modern Theme Showcase",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),

              /// 🔹 Card Example
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Component",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "This card changes automatically based on your theme.",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// 🔹 Buttons
              Text("Buttons", style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),

              const SizedBox(height: 10),

              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined Button"),
              ),

              const SizedBox(height: 10),

              TextButton(onPressed: () {}, child: const Text("Text Button")),

              const SizedBox(height: 20),

              /// 🔹 TextField
              Text(
                "Input Field",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Enter something",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),

              const SizedBox(height: 20),

              /// 🔹 Switch Preview
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Example Switch",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Switch(
                    value: controller.themeMode.value == ThemeMode.dark,
                    onChanged: (value) {
                      controller.changeTheme(
                        value ? ThemeMode.dark : ThemeMode.light,
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// 🔹 Theme Mode Indicator
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                ),
                child: Text(
                  "Current Theme: ${controller.themeMode.value.name.toUpperCase()}",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
