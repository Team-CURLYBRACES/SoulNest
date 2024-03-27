import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/music_therapy_screen/widgets/smallHeaderWithBackBtn.dart';

class MusicTherapy extends StatelessWidget {
  const MusicTherapy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SmallHeaderWithBtn(title: "Music Therapy"),
      ],
     )
    );
  }
}
