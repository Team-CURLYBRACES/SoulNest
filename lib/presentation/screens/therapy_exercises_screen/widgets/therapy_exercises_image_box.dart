import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: SizedBox(
        width: 367,
        height: 150,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(137, 154, 154, 154),
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image:
                      AssetImage("assets/images/meet-the-therapyst-copy.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Container(
              width: 367,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    const Color.fromARGB(117, 0, 0, 0),
                    const Color.fromARGB(190, 0, 0, 0)
                  ],
                ),
              ),
              child: Text(
                'Meet a counselor',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
