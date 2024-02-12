import 'package:flutter/material.dart';

class ActiveMinutes extends StatefulWidget {
  const ActiveMinutes({super.key});

  @override
  State<ActiveMinutes> createState() => _ActiveMinutesState();
}

class _ActiveMinutesState extends State<ActiveMinutes> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 200,
        child: Placeholder(
          fallbackHeight: 200,
        ),
      ),
    );
  }
}
