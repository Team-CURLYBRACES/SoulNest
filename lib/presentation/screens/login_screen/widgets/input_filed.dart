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
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: showText,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(240, 240, 240, 100),
            hintText: inputText,
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
    );
  }
}
