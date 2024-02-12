import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_header.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeHeader(),
        ],
      ),
    );
  }
}
