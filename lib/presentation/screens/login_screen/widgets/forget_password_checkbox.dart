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
            Text(
              "Remember Me",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color.fromRGBO(77, 77, 77, 1),
                  ),
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            text: "Forgot Password",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color.fromRGBO(8, 68, 139, 1),
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ],
    );
  }
}
