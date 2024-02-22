import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soulnest/presentation/screens/chatbot_screen/chatbot_screen.dart';
import 'package:soulnest/presentation/screens/find_therapists_screen/find_therapists_screen.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_screen_widget.dart';
import 'package:soulnest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/therapy_exercises_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    const HomeScreenWidget(),
    const FindTherapists(),
    const ChatbotScreen(),
    const TherapyExercisesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 83,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) => {
            setState(
              () => this.index = index,
            )
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.notification_add,
              ),
              label: "Therapists",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.chat_bubble,
              ),
              label: "chatbot",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.interests,
              ),
              label: "Exercises",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.headphones,
              ),
              label: "Profile",
            ),
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
      ),
      body: screens[index],
    );
  }
}
