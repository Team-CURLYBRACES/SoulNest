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
                "Personal Details",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Let's get to know more about you.",
          style: TextStyle(
              fontSize: 16
          ),)
      ],
    );
  }
}