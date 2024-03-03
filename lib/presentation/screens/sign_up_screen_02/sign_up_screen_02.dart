import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/custom_button.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/divider.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/forget_password_checkbox.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_in_logos.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_up.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/title_text.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/widgets/infoarea.dart';

void main() {
  runApp(const Sign_up_screen_02());
}

class Sign_up_screen_02 extends StatelessWidget {
  const Sign_up_screen_02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage("assets/logos/soulNest.png"),
                  width: 100,
                ),
                SizedBox(
                  height: 40,
                ),
                InfoArea(),
                SizedBox(
                  height: 40,
                ),
                InputField(
                  textFieldTitle: "Birthday",
                  inputText: "",
                  showText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(
                  textFieldTitle: "Gender",
                  inputText: "",
                  showText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(
                  textFieldTitle: "Occupation",
                  inputText: "",
                  showText: false,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          // Handle previous button action
                        },
                        child: Text('Previous'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          // Handle continue button action
                        },
                        child: Text('Continue'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}