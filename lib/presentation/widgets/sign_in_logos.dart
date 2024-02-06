import 'package:flutter/material.dart';

class SignInLogos extends StatelessWidget {
  const SignInLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(
          image: AssetImage("assets/images/facebook.png"),
          width: 130,
        ),
      ],
    );
  }
}
