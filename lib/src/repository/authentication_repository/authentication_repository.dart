import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:proluxe/start_screen.dart';
import 'package:proluxe/home_screen.dart';

//import 'package:proluxe/src/exceptions/login_with_email_and_password_failure.dart';
import 'package:proluxe/src/exceptions/signup_email_password_failure.dart';
//import 'package:proluxe/start_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const StartScreen())
        : Get.offAll(() => const HomeScreen());
  }

  //FUNC
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      /*firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.to(() => const StartScreen());*/
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

  /*Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
      return ex.message;
    } catch (_) {
      const ex = LogInWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }*/

  Future<void> logout() async => await _auth.signOut();
}
