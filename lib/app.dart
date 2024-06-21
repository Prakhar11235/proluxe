/*import 'package:flutter/material.dart';
import 'package:proluxe/signUp_screen.dart';
import 'package:proluxe/start_screen.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const SignupScreen();
    });
  }

  @override
  Widget build(context) {
    return GetMaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}*/
