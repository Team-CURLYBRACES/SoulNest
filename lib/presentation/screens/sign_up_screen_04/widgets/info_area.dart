import 'package:flutter/material.dart';

class InfoArea extends StatelessWidget {
  const InfoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
                "Let's Personalize and secure your account.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ],
        ),
      ],
    );
  }
}