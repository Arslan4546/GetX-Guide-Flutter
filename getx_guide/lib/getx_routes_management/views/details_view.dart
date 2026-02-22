import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${data['name']}"),
            Text("Age: ${data['age']}"),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Get.back(result: "Data from Details");
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
