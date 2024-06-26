import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/forgotpass_screen.dart';
import 'package:proluxe/src/features/authentication/controllers/login_controller.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});
  @override
  Widget build(context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.email,
            expands: false,
            decoration: InputDecoration(
              labelText: "Email or Phone Number",
              labelStyle: const TextStyle(fontFamily: 'PlayFair'),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            ),
          ),
          const SizedBox(height: 16),
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              expands: false,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Icons.visibility_off_outlined
                      : Icons.visibility),
                ),
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 226,
              ),
              TextButton(
                onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'PlayFair',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          /*const SizedBox(
                      height: 16,
                    ),*/
          OutlinedButton(
            onPressed: () {
              LoginController.instance.emailAndPasswordSignIn(
                  controller.email.text.trim(),
                  controller.password.text.trim());
            },
            style: OutlinedButton.styleFrom(
                //side: const BorderSide(width: 1.5),
                backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 136),
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'PlayFair',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          //const SizedBox(height: 16),
        ],
      ),
    );
  }
}
