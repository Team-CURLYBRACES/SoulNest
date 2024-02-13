import 'package:flutter/material.dart';

class CounselorProfile extends StatelessWidget {
  const CounselorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(2, 57, 127, 38),
                      ),
                      child: Image.asset("assets/images/backArrow.png"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Text(
                "Counselor",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
              ),
            ),
            Positioned(
              top: 210,
              left: 125,
              child: Container(
                width: 140,
                height: 140,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(189, 218, 255, 0.855),
                      width: 5,
                    ),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/avator.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
