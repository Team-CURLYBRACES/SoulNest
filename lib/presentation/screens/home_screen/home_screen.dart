import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:soulnest/presentation/screens/find_therapists_screen/find_therapists_screen.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_screen_widget.dart';
import 'package:soulnest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/therapy_exercises_screen.dart';
import 'package:soulnest/presentation/screens/chatbot_screen/chat_screen.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _token;
  int index = 0;
  final logger = Logger();

  @override
  void initState() {
    super.initState();
    _loadToken();
  }

  @override
  Widget build(BuildContext context) {
    final String? token = ModalRoute.of(context)!.settings.arguments as String?;
    final screens = [
      const HomeScreenWidget(),
      const FindTherapists(),
      const ChatScreen(),
      const TherapyExercisesPage(),
      const ProfilePage(),
    ];

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
                color: Colors.white,
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
                color: Colors.white,
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
                color: Colors.white,
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
                color: Colors.white,
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

  Future<void> _loadToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('id');
    if (token != null) {
      setState(() {
        _token = token; // Store the fetched token in the _token variable
      });
    }
  }
}
