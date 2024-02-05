import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  final String inputText;
  final bool showText;
  const InputFiled({
    super.key,
    required this.inputText,
    required this.showText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
