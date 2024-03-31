import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/signupscreen2/info_area.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SignUpScreen04());
}

class SignUpScreen04 extends StatelessWidget {
  SignUpScreen04({Key? key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

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

              // Username Field
              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Choose a cool username",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _usernameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "username",
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

              // Password field

              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Create a strong password",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "password",
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
              // Confirm password
              Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Confirm password",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _confirmController,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(240, 240, 240, 100),
                          hintText: "password",
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
                      if (_usernameController.text != '' && _passwordController.text != '' && _confirmController.text != '') {
                        if (_passwordController.text == _confirmController.text) {
                          sendData(context);
                          
                        }
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
        ]),
      ),
    ));
  }

  Future<void> sendData(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name') ?? '';
    String? email = prefs.getString('email') ?? '';
    String? birthday = prefs.getString("date_of_birth") ?? '';
    String ? gender = prefs.getString("email") ?? '';
    String? occupation = prefs.getString("occupation") ?? '';

    String url = 'http://188.166.196.163:8002/users/register/';

     Map<String, dynamic> jsonData = {
    'email': email,
    'name': name,
    'gender': gender,
    'date_of_birth': birthday,
    'occupation': occupation,
    'username': _usernameController.text.trim(),
    'password': _passwordController.text.trim()
    };
    String requestData = jsonEncode(jsonData);

    try {
      final response = await http.post(
        Uri.parse(url),
        body: requestData
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        String token = responseData['id'];
        prefs.setString('id', token);
        Navigator.pushNamed(context, '/home');
      }
    }
    catch(e) {
      log('Exception caught: $e');
    }
  }
}


