import 'package:flutter/material.dart';

class TherapyExercises extends StatelessWidget {
  const TherapyExercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Therapy Exercises"),
      ),
      body: const Center(
        child: Text("Let's do some mind relaxing exercises"),
      ),
    );
  }
}