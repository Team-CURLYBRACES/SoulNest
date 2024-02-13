import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_active_minutes.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_header.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_recent_activites.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          Navigator.pushNamed(context, '/counselor-profile');
        },
        backgroundColor: const Color.fromARGB(255, 32, 158, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.white),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man_3_sharp, color: Colors.white),
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
