import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: 'PlayFair',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "We will send you a Verification link on your Registered Email-ID shravani@gmail.com",
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  color: Color.fromARGB(255, 99, 99, 99),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              Form(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: "Email or Phone Number",
                    labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    //side: const BorderSide(width: 1.5),
                    backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 136),
                  child: Text(
                    'Send',
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
      ),
    );
  }
}
