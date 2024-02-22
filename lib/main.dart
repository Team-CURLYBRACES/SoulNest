import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/counselor_profile.dart';
import 'package:soulnest/presentation/screens/home_screen/home_screen.dart';
import 'package:soulnest/presentation/screens/login_screen/login_screen.dart';
import 'package:soulnest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/sign_up_screen.dart';
import 'package:soulnest/presentation/screens/therapy_exercises_screen/therapy_exercises_screen.dart';
import 'package:soulnest/presentation/theme/text_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: customTextTheme(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(0, 83, 145, 1),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/home": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/sign-up": (context) => const SignUpScreen(),
        "/counselor-profile": (context) => const CounselorProfile(),
        "/user-profile": (context) => const ProfilePage(),
        "/therapy-exercises": (context) => const TherapyExercisesPage(),
      },
    );
  }
}
