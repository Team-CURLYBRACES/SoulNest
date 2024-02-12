import 'package:flutter/material.dart';

class ActivityBox extends StatelessWidget {
  final String image;
  final String? text;
  const ActivityBox({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      height: 201,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(137, 154, 154, 154),
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black.withAlpha(0),
                  const Color.fromARGB(75, 0, 0, 0),
                  const Color.fromARGB(163, 0, 0, 0)
                ],
              ),
            ),
            child: Text(
              '$text',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
