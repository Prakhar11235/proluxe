import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/src/repository/authentication_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  Future<void> emailAndPasswordSignIn(String email, String password) async {
    await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }
}
