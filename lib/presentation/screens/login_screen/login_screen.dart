import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/divider.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/forget_password_checkbox.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_in_logos.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_up.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/title_text.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final logger = Logger();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> userLogin(BuildContext context) async {
    const String url = 'http://188.166.196.163:8002/users/login/';
    String email = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    try {
      final response = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'email': email, 'password': password}));

      var data = jsonDecode(response.body);
      String token = data['token'] != null ? data['token'] : '';
      saveData(token);
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, "/home", arguments: token);
      } 
      else if (response.statusCode == 401) {
        log('Authorization unsuccessful');
      }
    } catch (e) {
      // Exception handling
      log('Exception caught: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Image(
                    image: AssetImage("assets/logos/logo.png"),
                    width: 170,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TitleText(),
                  const SizedBox(
                    height: 30,
                  ),

                  //Input field for username
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Email address",
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
                          hintText: "johndoe@gmail.com",
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
                  const SizedBox(
                    height: 20,
                  ),
                  // Input field for password
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Password",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
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
                  //Sign In button
                  const SizedBox(
                    height: 10,
                  ),
                  const ForgetPassword(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: SizedBox(
                      height: 55,
                      child: TextButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 0, 61, 110),
                        )),
                        onPressed: () {
                          userLogin(context);
                        },
                        child: Text(
                          "Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //CustomeButton(buttonText: "Sign In"),
                  const SizedBox(
                    height: 10,
                  ),
                  const SignUp(),
                  const SizedBox(
                    height: 30,
                  ),
                  const DividerOr(),
                  const SizedBox(
                    height: 30,
                  ),
                  const SignInLogos(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> saveData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('id', data);
  }
}
