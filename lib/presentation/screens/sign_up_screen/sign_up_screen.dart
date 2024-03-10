import 'package:flutter/material.dart';

void main() {
  runApp(const SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign-Up"),
      ),
      body: const Center(child: Text("Sign Up Screen")),
    );
  }
}