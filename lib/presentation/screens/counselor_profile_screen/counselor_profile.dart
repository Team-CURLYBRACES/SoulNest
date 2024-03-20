import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/background.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/allContent.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/favoriteIcon.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/header.dart';

class CounselorProfile extends StatelessWidget {
  const CounselorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Background(),
              const Header(),
              whiteOverlapBox(size),
              const AllContent(),
              const FavoriteIcon(),
            ],
          ),
        ],
      ),
    );
  }

  Positioned whiteOverlapBox(Size size) {
    return Positioned(
      top: size.height * 0.25,
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
