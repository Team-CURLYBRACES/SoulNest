import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/signupscreen2/info_area.dart';

void main() {
  runApp(const SignUpScreen2());
}

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key});

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
                textFiledTitle: "Birthday",
                inputText: "06/12/2002",
                showText: false,
              ),
              const SizedBox(height: 20),
              InputFiled(
                textFiledTitle: "Gender",
                inputText: "Male/Female/Other",
                showText: true,
              ),
              const SizedBox(height: 20),
                InputFiled(
                  textFiledTitle: "Occupation",
                  inputText: "Occupation",
                  showText: true,
              ),
              const SizedBox(height: 40),               
                            Row(
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up_screen');
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
                      Navigator.pushNamed(context, '/signup_interests');
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
         ]
        ),
      ),
     )
    );

  }
}


