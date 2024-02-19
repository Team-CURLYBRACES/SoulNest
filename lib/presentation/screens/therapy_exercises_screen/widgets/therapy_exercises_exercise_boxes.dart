import 'package:flutter/material.dart';

class ExerciseBoxes extends StatelessWidget {
  const ExerciseBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            SizedBox(
              width: 285,
              child: Text(
                "Let's do some mind relaxing exerciese",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 300,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
