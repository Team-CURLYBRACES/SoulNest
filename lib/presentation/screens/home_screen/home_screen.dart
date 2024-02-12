import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Placeholder(
          fallbackHeight: 250,
        ),
        Placeholder(
          fallbackHeight: 250,
        )
      ],
    ));
  }
}
