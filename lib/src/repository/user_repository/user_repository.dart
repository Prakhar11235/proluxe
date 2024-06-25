import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proluxe/src/features/authentication/models/user_model.dart';
import 'package:flutter/material.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .doc(user.id)
        .set(user.toJson())
        //.add(user.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Your account has been created",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.red);
      print(error.toString());
    });
  }
}
