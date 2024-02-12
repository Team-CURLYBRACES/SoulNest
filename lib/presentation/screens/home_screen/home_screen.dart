import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_active_minutes.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_header.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_recent_activites.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man_3_sharp),
            label: 'Profile',
          ),
        ],
      ),
      body: const Column(
        children: [
          HomeHeader(),
          RecentActivities(),
          ActiveMinutes(),
        ],
      ),
    );
  }
}
