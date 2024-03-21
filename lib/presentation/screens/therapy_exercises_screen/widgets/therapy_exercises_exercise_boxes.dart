import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/box.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/widgets/exercise_Item.dart';

class ExerciseBoxes extends StatelessWidget {
  const ExerciseBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    List<ExerciseItem> items = [
      ExerciseItem(
          text: "Listen to Music", imagePath: "assets/images/music.jpg"),
      ExerciseItem(
          text: "Draw Mandel arts", imagePath: "assets/images/mandala_art.png"),
      ExerciseItem(
          text: "Meditation", imagePath: "assets/images/meditation.png"),
      ExerciseItem(
          text: "Yoga Exercises", imagePath: "assets/images/jouraling.jpg"),
      ExerciseItem(
          text: "Listen to Music", imagePath: "assets/images/music.jpg"),
      ExerciseItem(
          text: "Draw Mandel arts", imagePath: "assets/images/mandala_art.png"),
      ExerciseItem(
          text: "Meditation", imagePath: "assets/images/meditation.png"),
      ExerciseItem(
          text: "Yoga Exercises", imagePath: "assets/images/jouraling.jpg"),
    ];

    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: GridView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Box(
                text: items[index].text,
                imagePath: items[index].imagePath,
              ),
            );
          },
        ),
      ),
    );
  }
}
