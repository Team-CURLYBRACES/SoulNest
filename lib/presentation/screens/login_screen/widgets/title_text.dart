import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Welcome back!",
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}
