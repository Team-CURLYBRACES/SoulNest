import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_header.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_profile_deatails.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_stress_overview.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profle_screen_sheduled_sessions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            ProfileDetails(),
            SizedBox(
              height: 20,
            ),
            SheduledSessions(),
            SizedBox(
              height: 20,
            ),
            StressOverView()
          ],
        ),
      ),
    );
  }
}
