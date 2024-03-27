import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/custom_button.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/info_area.dart';

void main() {
  runApp(const SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Expanded(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image(
                      image: AssetImage("assets/logos/logo.png"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InfoArea(),
                    SizedBox(
                      height: 40,
                    ),
                    InputFiled(
                      textFiledTitle: "Full Name",
                      inputText: "John Doe",
                      showText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputFiled(
                      textFiledTitle: "E-mail",
                      inputText: "john.doe@gmail.com",
                      showText: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomeButton(buttonText: "Next"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
