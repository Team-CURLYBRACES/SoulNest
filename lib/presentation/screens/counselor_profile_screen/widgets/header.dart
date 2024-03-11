import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 57, 127, 0.38),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SizedBox(
                  width: 30,
                  child: IconButton(
                    iconSize: 25,
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    width: size.width,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Counselor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
