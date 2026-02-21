import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_states/reactive_state/controller.dart';
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getx Reactive State',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () =>
              Text(controller.count.toString(), style: TextStyle(fontSize: 30)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
      ),
    );
  }
}
