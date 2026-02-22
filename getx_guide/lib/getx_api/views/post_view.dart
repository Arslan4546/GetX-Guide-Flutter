import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/post_viewmodel.dart';

class PostView extends GetView<PostViewModel> {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              controller.errorMessage.value,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        return ListView.builder(
          itemCount: controller.postList.length,
          itemBuilder: (context, index) {
            final post = controller.postList[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              ),
            );
          },
        );
      }),
    );
  }
}
