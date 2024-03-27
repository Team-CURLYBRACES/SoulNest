import 'package:flutter/material.dart';

class StressMessageBox extends StatelessWidget {
  final String stressLevel;
  final Function()? onTap;

  const StressMessageBox({
    Key? key,
    required this.stressLevel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message;
    switch (stressLevel) {
      case 'Normal':
        message = 'You have spent this week so peacefully.';
        break;
      case 'Mild Stress':
        message = 'How about doing some mind relaxing exercises?';
        break;
      case 'High Stress':
        message = 'How about we meet up with a counselor or mental health pro to tackle that stress together?';
        break;
      default:
        message = '';
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 500,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: stressLevel == 'Normal' ? Color.fromARGB(255, 9, 74, 10) : stressLevel == 'Mild Stress' ? Color.fromARGB(255, 174, 121, 14) : Color.fromARGB(255, 176, 77, 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
