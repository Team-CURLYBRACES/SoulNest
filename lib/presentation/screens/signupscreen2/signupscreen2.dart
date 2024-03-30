import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/signupscreen2/info_area.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SignUpScreen2());
}

class SignUpScreen2 extends StatelessWidget {
  SignUpScreen2({Key? key});
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

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
              const Image(
                image: AssetImage("assets/logos/logo.png"),
              ),
              const SizedBox(height: 40),
              const InfoArea(),
              const SizedBox(height: 20),
              // Birthday field
              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Birthday",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _birthdayController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "2005-01-10",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              // End of birthday field
              const SizedBox(height: 20),

              // Start of gender field

              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Gender",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _genderController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "male/female/other",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              const SizedBox(height: 20),
              // Start of occupation field
              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Occupation",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _occupationController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "occupation",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      )
                    ],
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
                      late bool isValidDate;
                      try {
                        DateTime.parse(_birthdayController.text);
                        isValidDate = true;
                      }
                      catch (e) {
                        isValidDate = false;
                      }
                      if (_genderController.text != '' && _occupationController.text != '' && isValidDate == true) {
                        saveData();
                        Navigator.pushNamed(context, '/signup_interests');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 83, 145),
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

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('date_of_birth', _birthdayController.text);
    prefs.setString('gender', _genderController.text);
    prefs.setString('occupation', _occupationController.text);
  }
}


