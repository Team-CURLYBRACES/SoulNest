import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String buttonText;
  const CustomeButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Expanded(
        child: SizedBox(
          height: 55,
          child: TextButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 0, 61, 110),
            )),
            onPressed: () {
              Navigator.pushNamed(context, "/signupscreen2");
            },
            child: Text(
              buttonText,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
