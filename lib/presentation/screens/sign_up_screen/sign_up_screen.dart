import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/sign_up_screen/info_area.dart';


void main() {
  runApp(const SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120),
              Image(
                image: AssetImage("assets/logos/logo.png"),
              ),
              SizedBox(height: 40),
              InfoArea(),
              SizedBox(height: 40),
              InputFiled(
                textFiledTitle: "Full Name",
                inputText: "John Doe",
                showText: false,
              ),
              SizedBox(height: 20),
              InputFiled(
                textFiledTitle: "E-mail",
                inputText: "john.doe@gmail.com",
                showText: true,
              ),
              SizedBox(height: 10),
              SizedBox(height: 40),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_screen');
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
                      Navigator.pushNamed(context, '/signupscreen2');
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

                ],
              ),
              SizedBox(height: 10),
              SizedBox(height: 20),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
