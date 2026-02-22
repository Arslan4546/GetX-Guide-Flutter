import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_routes_management/controller/home_controller.dart';
import '../routes/app_routes.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.find();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Obx(
          () => Text(
            "Counter: ${controller.counter}",
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: const Icon(Icons.add),
          ),

          const SizedBox(height: 12),

          FloatingActionButton(
            heroTag: "details",
            onPressed: () {
              Get.toNamed(
                AppRoutes.details,
                arguments: {"name": "Arslan", "age": 24},
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
