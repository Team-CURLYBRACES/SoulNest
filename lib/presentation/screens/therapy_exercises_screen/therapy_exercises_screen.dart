import 'package:flutter/material.dart';
import 'package:soulnest/presentation/common/profile_screen_header.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/therapy_exercises_exercise_boxes.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/therapy_exercises_image_box.dart';

class TherapyExercisesPage extends StatelessWidget {
  const TherapyExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SmallHeader(
            title: 'Therapy Exercises',
          ),
          const ImageBox(),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Text("Let’s do some mind relaxing exercises",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          const ExerciseBoxes(),
        ],
      ),
    );
  }
}
