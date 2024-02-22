import 'package:flutter/material.dart';
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
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        child: NavigationBar(
          animationDuration: const Duration(milliseconds: 600),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
            () => this.index = index,
          ),
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home_outlined,
              ),
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.group_add_outlined,
              ),
              icon: Icon(
                Icons.group_add,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: "Therapists",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.chat_bubble_outline,
              ),
              icon: Icon(
                Icons.chat_bubble,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: "chatbot",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.interests_outlined,
              ),
              icon: Icon(
                Icons.interests,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: "Exercises",
            ),
            NavigationDestination(
              icon: SizedBox(
                height: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
