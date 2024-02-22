import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_header.dart';

import 'home_active_minutes.dart';
import 'home_recent_activites.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          RecentActivities(),
          ActiveMinutes(),
        ],
      ),
    );
  }
}
