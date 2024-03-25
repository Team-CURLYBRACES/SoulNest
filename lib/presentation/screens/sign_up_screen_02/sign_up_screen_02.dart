import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_02/widgets/my_textfield.dart';
import 'package:soulnest/presentation/screens/sign_up_screen_02/widgets/square_tile.dart';

class SignupPage2 extends StatelessWidget {
  SignupPage2({super.key});

  // text editing controllers
  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  final occupationController = TextEditingController();

  // sign user in method
 // void SignupPage2() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 50),

                  // logo
                  Container(
                  alignment:Alignment.center,
                    child:Image.asset("assets\logos\soulNest.png"),

                      SizedBox(width: 25)),


                    ],
                  ),

                  SizedBox(height: 50),

                  // welcome back, you've been missed!
                  Text(
                    'Personal Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //let's get to know more about you
                  Text(
                    'lets get to know more about you!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // birthday textfield
                  MyTextField(
                    controller: birthdayController,
                    hintText: 'Birthday',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // gender textfield
                  MyTextField(
                    controller: genderController,
                    hintText: 'Gender',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  // occupation textfield
                  MyTextField(
                    controller:occupationController,
                    hintText: 'Occupation',
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
                          child: Text('Continue'),
                        ),
                      ),
                    ],
                  ),
              ),
    }
}