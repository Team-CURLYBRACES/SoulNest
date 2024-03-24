import 'package:flutter/material.dart';

class BookSessionButton extends StatelessWidget {
  const BookSessionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 83, 145, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Book a session',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
