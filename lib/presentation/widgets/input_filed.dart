import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  final String inputText;
  final bool showText;
  final String textFiledTitle;
  const InputFiled({
    super.key,
    required this.inputText,
    required this.showText,
    required this.textFiledTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              textFiledTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        TextField(
          obscureText: showText,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(240, 240, 240, 100),
            hintText: inputText,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(5, 5),
                ),
                borderSide: BorderSide(
                  color: Colors.black26,
                )),
          ),
        ),
      ],
    );
  }
}
