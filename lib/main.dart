// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/counselor_profile/counselor_profile.dart';
import 'package:soulnest/presentation/screens/home_screen/home_screen.dart';
import 'package:soulnest/presentation/screens/login_screen/login_screen.dart';
import 'package:soulnest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/sign_up_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.w900),
          headline2: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w900),
          headline3: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900),
          headline4: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
          headline5: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
          headline6: TextStyle(fontSize: 14, color: Colors.black),
          subtitle1: TextStyle(fontSize: 16, color: Colors.black),
          subtitle2: TextStyle(fontSize: 16, color: Colors.black),
          bodyText1: TextStyle(fontSize: 16, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14, color: Colors.black),
          button: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/home": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/sign-up": (context) => const SignUpScreen(),
        "/counselor-profile": (context) => const CounselorProfile(),
        "/user-profile": (context) => const ProfilePage()
      },
    );
  }
}
