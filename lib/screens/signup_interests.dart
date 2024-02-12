import 'package:flutter/material.dart';
import 'package:soulnest/models/checkbox_state.dart';

class SignUp_Interests extends StatefulWidget {
  const SignUp_Interests({super.key});

  @override
  State<SignUp_Interests> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUp_Interests> {

  final notifications = [
    CheckBoxState(title: 'Music'),
    CheckBoxState(title: 'Journaling'),
    CheckBoxState(title: 'Meditation'),
    CheckBoxState(title: 'Sports'),
    CheckBoxState(title: 'Yoga'),
  ];

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
          ...notifications.map(buildSingleCheckbox).toList(),
           // previous and next buttons
        ],
      ),
    ));
  }

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Color.fromARGB(255, 0, 83, 145),
        value: checkbox.value,
        title: Text(
          checkbox.title,
        ),
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}
