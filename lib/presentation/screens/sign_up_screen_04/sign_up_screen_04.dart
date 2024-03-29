import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/signupscreen2/info_area.dart';

void main() {
  runApp(const SignUpScreen04());
}

class SignUpScreen04 extends StatelessWidget {
  const SignUpScreen04({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Image(
                image: AssetImage("assets/logos/logo.png"),
              ),
              const SizedBox(height: 40),
              InfoArea(),
              const SizedBox(height: 20),
              InputFiled(
                textFiledTitle: "Choose a cool username",
                inputText: "username",
                showText: false,
              ),
              const SizedBox(height: 20),
              InputFiled(
                textFiledTitle: "Create a strong password",
                inputText: "password",
                showText: true,
              ),
              const SizedBox(height: 20),
                InputFiled(
                  textFiledTitle: "Confirm password",
                  inputText: "password",
                  showText: true,
              ),
              const SizedBox(height: 40),               
                            Row(
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup_interests');
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 0, 83, 145),
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Previous",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 83, 145),
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 83, 145),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.fromLTRB(56, 15, 56, 18),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              const SizedBox(height: 20),
            ],
          ),
        ]),
      ),
    ));
  }
}


