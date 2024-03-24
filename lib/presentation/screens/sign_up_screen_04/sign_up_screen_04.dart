import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_02/widgets/my_textfield.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_02/widgets/square_tile.dart';


class SignupPage4 extends StatelessWidget {
  SignupPage4({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // sign user in method
  //void SignupPage4() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // google button
                      SquareTile(imagePath: 'lib/Logo/soulNest.png'),

                      SizedBox(width: 25),


                    ],
                  ),



                  const SizedBox(height: 25),

                  //let's get to know more about you
                  Text(
                    'lets personalize and secure your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // birthday textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // gender textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  // occupation textfield
                  MyTextField(
                    controller:confirmpasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  //previous and continue buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle previous button action
                          },
                          child: Text('Previous'),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle continue button action
                          },
                          child: Text('Finish'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
    }
}