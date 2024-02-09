import 'package:flutter/material.dart';

class SignUp_Interests extends StatelessWidget {
  const SignUp_Interests({super.key});

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
                  fontFamily: "poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 11),
          // text
              const Text(
                "Please choose your interests so we can recommend more relevant therapy suggestions  ",
                style: TextStyle(
                  //fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),

          // checkboxes

          // previous and next buttons
          ],
        ),
      )

    );
  }
}
