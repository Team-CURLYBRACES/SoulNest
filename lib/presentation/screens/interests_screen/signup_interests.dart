import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/interests_screen/models/checkbox_state.dart';
import 'package:soulnest/presentation/screens/interests_screen/widgets/next_button.dart';
import 'package:soulnest/presentation/screens/interests_screen/widgets/previous_button.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // logo
          Center(
            child: Image.asset('assets/logos/logo.png'),
          ),

          const SizedBox(height: 56),
          // title
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: const Text(
              "Choose your interests",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(height: 11),
          // text
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: const Text(
              "Please choose your interests so we can recommend more relevant therapy suggestions  ",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(height: 20),
          // checkboxes
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              children: notifications.map(buildSingleCheckbox).toList(),
            ),
          ),


          const SizedBox(height: 30),
          // previous and next buttons

          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                PreviousButton(
                    onPressed: () {},
                    child: Text(
                      "Previous",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 83, 145),
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                SizedBox(width: 50),
                NextButton(
                    onTap: () => Navigator.pushNamed(context, '/sign-up-screen-04'),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
          )
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
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          )
        ),
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}