import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_activity_box.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Recent Activites",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ActivityBox(
                  image: "assets/images/listen_music.png",
                  text: "Listen to Music",
                ),
                SizedBox(
                  width: 20,
                ),
                ActivityBox(
                  image: "assets/images/meditation.png",
                  text: "Meditation",
                ),
                SizedBox(
                  width: 20,
                ),
                ActivityBox(
                  image: "assets/images/drawing.png",
                  text: "Drawing",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
