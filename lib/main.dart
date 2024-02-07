import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/home_screen.dart';
import 'package:soulnest/presentation/screens/login_screen/login_screen.dart';
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
      theme: ThemeData(fontFamily: "poppins"),
      initialRoute: "/",
      routes: {
        "/home": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/sign-up": (context) => const SignUpScreen()
      },
    );
  }
}
