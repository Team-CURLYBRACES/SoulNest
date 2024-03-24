import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:soulnest/presentation/screens/chatbot_screen/chat_screen.dart';
import 'package:soulnest/model/data.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/counselor_profile.dart';
import 'package:soulnest/presentation/screens/find_therapists_screen/find_therapists_screen.dart';
import 'package:soulnest/presentation/screens/home_screen/home_screen.dart';
import 'package:soulnest/presentation/screens/interests_screen/signup_interests.dart';
import 'package:soulnest/presentation/screens/login_screen/login_screen.dart';
import 'package:soulnest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/sign_up_screen.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_02/sign_up_screen_02.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_04/sign_up_screen_04.dart';
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
// cls
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Data()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: Colors.blue,
            secondary: Colors.blue,
          ),
          fontFamily: "Poppins",
          textTheme: customTextTheme(),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(0, 83, 145, 1),
          ),
        ),
        initialRoute: "/splash_screen",
        routes: {
          "/home": (context) => HomeScreen(),
          "/login": (context) => LoginScreen(),
          "/sign-up": (context) => const SignUpScreen(),
          "/counselor-profile": (context) => const CounselorProfile(),
          "/user-profile": (context) => const ProfilePage(),
          "/therapy-exercises": (context) => const TherapyExercisesPage(),
          "/sign-up-screen-02": (context) =>  SignupPage2(),
          "/sign-up-screen-04": (context) =>  SignupPage4(),
        },
      ),
    );
  }
}
