import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account yet?",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/sign-up");
          },
          child: Text(
            "Sign up",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: const Color.fromARGB(255, 0, 37, 68),
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
