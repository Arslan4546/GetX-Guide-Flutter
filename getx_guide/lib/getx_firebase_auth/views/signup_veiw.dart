import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/getx_firebase_auth/viewmodel/auth_viewmodel.dart';

class SignupView extends StatelessWidget {
  final AuthViewModel controller = Get.find<AuthViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: controller.passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),

            SizedBox(height: 20),

            Obx(
              () => controller.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: controller.signUp,
                      child: Text("Sign Up"),
                    ),
            ),

            TextButton(
              onPressed: () => Get.back(),
              child: Text("Already have account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
