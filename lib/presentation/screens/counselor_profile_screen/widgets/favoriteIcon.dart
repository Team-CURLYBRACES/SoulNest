import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      right: 0,
      top: size.height * 0.265,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: size.width * 0.04),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(27, 143, 199, 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
