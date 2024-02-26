import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        Container(
          width: double.infinity,
          height: 287,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(27, 143, 199, 1),
                Color.fromRGBO(1, 32, 111, 1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
