import 'package:flutter/material.dart';
import 'package:soulnest/screens/login_screen.dart';

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
      home: const LoginScreen(),
    );
  }
}
