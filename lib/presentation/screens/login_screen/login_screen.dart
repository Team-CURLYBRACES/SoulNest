import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/custom_button.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/divider.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/forget_password_checkbox.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/input_filed.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_in_logos.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/sign_up.dart';
import 'package:soulnest/presentation/screens/login_screen/widgets/title_text.dart';
import 'package:logger/logger.dart';

class LoginScreen extends StatelessWidget {
  
  LoginScreen({super.key});
  final  logger = Logger();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> userLogin(BuildContext context) async {
    String username = _usernameController.text;
    String password = _passwordController.text.trim();
    log('$username');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Image(
                      image: AssetImage("assets/images/soulnest2.png"),
                      width: 150,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TitleText(),
                    const SizedBox(
                      height: 50,
                    ),

                    //Input stuff fields for username and all
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
                            hintText: "John@gmail.com",
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
                    //Password fields
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
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(240, 240, 240, 100),
                                hintText: "Password",
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
                                )
                              ),
                              onPressed: () {
                                userLogin(context);
                                //Navigator.pushNamed(context, "/home");
                              },
                              child: Text(
                                "Sign In",
                                style: Theme.of(context).textTheme.displaySmall ?.copyWith(color: Colors.white),
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
}
