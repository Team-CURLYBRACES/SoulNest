import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CounselorProfile extends StatelessWidget {
  const CounselorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 32, 111, 1),
                Color.fromRGBO(27, 143, 199, 1)
              ],
            )),
          ),
          Positioned(
              top: size.height * 0.068,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 50,
                          width: size.width,
                          alignment: Alignment.center,
                          child: Text(
                            "Counsellor",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                  fontSize: 23,
                                ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.height * 0.028,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromRGBO(2, 57, 127, 0.38),
                          ),
                          child: IconButton(
                            alignment: Alignment.center,
                            icon: Image.asset("assets/images/left.png"),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
