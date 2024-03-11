import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text;
  final String imagePath;

  const Box({
    required this.text,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(137, 154, 154, 154),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withAlpha(0),
                const Color.fromARGB(67, 0, 0, 0),
                const Color.fromARGB(255, 0, 0, 0)
              ],
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
          ),
        ),
      ],
    );
  }
}
