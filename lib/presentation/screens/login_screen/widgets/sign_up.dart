import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account yet?",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/sign-up");
          },
          child: Text.rich(
            TextSpan(
              text: "Sign Up",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color.fromRGBO(8, 68, 139, 1),
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
