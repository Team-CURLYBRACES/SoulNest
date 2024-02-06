// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String buttonText;
  const CustomeButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Expanded(
        child: TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(255, 0, 61, 110),
          )),
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
