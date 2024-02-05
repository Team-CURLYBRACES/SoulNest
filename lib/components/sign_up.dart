import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account yet?",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Sign up",
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 37, 68)),
        )
      ],
    );
  }
}
