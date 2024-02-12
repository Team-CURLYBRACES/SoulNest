import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/custom_button.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/divider.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/forget_password_checkbox.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_in_logos.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_up.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/title_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
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
                      image: AssetImage("assets/logos/soulNest.png"),
                      width: 100,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TitleText(),
                    SizedBox(
                      height: 40,
                    ),
                    InputFiled(
                      textFiledTitle: "Email address",
                      inputText: "John@gmail.com",
                      showText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputFiled(
                      textFiledTitle: "Password",
                      inputText: "Password",
                      showText: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ForgetPassword(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomeButton(buttonText: "Sign In"),
                    SizedBox(
                      height: 10,
                    ),
                    SignUp(),
                    SizedBox(
                      height: 20,
                    ),
                    DividerOr(),
                    SizedBox(
                      height: 20,
                    ),
                    SignInLogos(),
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
