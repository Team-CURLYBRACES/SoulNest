import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInLogos extends StatelessWidget {
  const SignInLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/apple.svg",
          width: 50,
        ),
        const SizedBox(
          width: 30,
        ),
        SvgPicture.asset(
          "assets/images/facebook.svg",
          width: 50,
        ),
        const SizedBox(
          width: 30,
        ),
        SvgPicture.asset(
          "assets/images/google.svg",
          width: 50,
        ),
      ],
    );
  }
}
