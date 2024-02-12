import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Remember Me",
              style: TextStyle(
                color: Color.fromRGBO(8, 67, 139, 1),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Text(
          "Forget Password",
          style: TextStyle(
              color: Color.fromRGBO(8, 67, 139, 1),
              fontSize: 14,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}