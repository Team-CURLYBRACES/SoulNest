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
                "Hey there!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            Icon(
              Icons.waving_hand_rounded
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "We are excited to have you on board. Let's get to know each other better!",
          style: TextStyle(
              fontSize: 16
          ),)
      ],
    );
  }
}