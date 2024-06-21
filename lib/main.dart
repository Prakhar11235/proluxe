import 'package:flutter/material.dart';
import 'package:proluxe/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:proluxe/src/repository/authentication_repository/authentication_repository.dart';
import 'package:proluxe/start_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const StartScreen());
}
