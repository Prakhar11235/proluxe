import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:proluxe/intro_screen.dart';
import 'package:proluxe/start_screen.dart';
import 'package:proluxe/home_screen.dart';
import 'package:proluxe/src/exceptions/login_with_email_and_password_failure.dart';
import 'package:proluxe/src/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const StartScreen());
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }

  //FUNC
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (firebaseUser.value != null) {
        Get.offAll(() => const IntroScreen());
      } else {
        Get.to(() => const StartScreen());
      }
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('Firebase auth exception- ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('Firebase auth exception- ${ex.message}');
      throw ex;
    }
    //return null;
  }

  Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (_auth.currentUser != null) {
        Get.offAll(() => const HomeScreen());
      } else {
        Get.to(() => const StartScreen());
      }
    } on FirebaseAuthException catch (e) {
      final ex = LogInWithEmailAndPasswordFailure.code(e.code);
      print('Firebase auth exception- ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = LogInWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
