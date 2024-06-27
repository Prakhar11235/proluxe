import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/reset_password.dart';
import 'package:proluxe/src/repository/authentication_repository/authentication_repository.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail(String email) async {
    await AuthenticationRepository.instance.sendPasswordResetEmail(email);
    Get.snackbar("Sent", "Password reset link sent to your email");
    Get.to(() => ResetPasswordScreen(email: email));
  }
}
