import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: size.height * 0.082, left: 30),
      width: double.infinity,
      height: size.height * 0.168,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 32, 111, 1),
            Color.fromRGBO(27, 143, 199, 1)
          ],
        ),
      ),
      child: Text(
        "Profile",
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.white, fontSize: 23),
      ),
    );
  }
}
