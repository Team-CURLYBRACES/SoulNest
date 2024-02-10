import 'package:flutter/material.dart';

class SignUp_Interests extends StatefulWidget {
  const SignUp_Interests({super.key});

  @override
  State<SignUp_Interests> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUp_Interests> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Image.asset('assets/logo.png'),

          const SizedBox(height: 56),
          // title
          const Text(
            "Choose your interests",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 11),
          // text
          const Text(
            "Please choose your interests so we can recommend more relevant therapy suggestions  ",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 30),
          // checkboxes
          Checkbox(
            activeColor: Color.fromARGB(255, 0, 83, 145),
            value: value,
            onChanged: (value) =>setState(()=> this.value = value!),
              
            )

          // previous and next buttons
        ],
      ),
    ));
  }
}
