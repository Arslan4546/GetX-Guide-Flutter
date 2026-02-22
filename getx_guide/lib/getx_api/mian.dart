import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/post_binding.dart';
import 'views/post_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: PostBinding(),
      home: const PostView(),
    );
  }
}
