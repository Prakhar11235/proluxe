import 'package:flutter/material.dart';
import 'package:proluxe/src/features/authentication/controllers/signup_controller.dart';
import 'package:get/get.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.fullName,
              expands: false,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              expands: false,
              decoration: InputDecoration(
                labelText: "DD/MM/YYYY(optional)",
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              expands: false,
              decoration: InputDecoration(
                labelText: "Occupation(optional)",
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controller.email,
              expands: false,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controller.password,
              expands: false,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: const Icon(Icons.visibility_off),
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              expands: false,
              decoration: InputDecoration(
                labelText: "Confirm password",
                suffixIcon: const Icon(Icons.visibility_off),
                labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  SignUpController.instance.registerUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                }
              } /*() => Get.to(() => const GetOTPScreen())*/,
              style: OutlinedButton.styleFrom(
                  //side: const BorderSide(width: 1.5),
                  backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 136),
                child: Text(
                  'Enroll',
                  style: TextStyle(
                      fontFamily: 'PlayFair',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
