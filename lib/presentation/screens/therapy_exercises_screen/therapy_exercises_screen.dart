import 'package:flutter/material.dart';
import 'package:soulnest/common/profile_screen_header.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/therapy_exercises_exercise_boxes.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/therapy_exercises_image_box.dart';

class TherapyExercisesPage extends StatelessWidget {
  const TherapyExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SmallHeader(
              title: 'Therapy Exercises',
            ),
            ImageBox(),
            ExerciseBoxes(),
          ],
        ),
      ),
    );
  }
}
