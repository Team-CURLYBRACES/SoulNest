import 'package:flutter/material.dart';

class SmallHeaderWithBtn extends StatelessWidget {
  final String title;
  const SmallHeaderWithBtn({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.168,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 32, 111, 1),
            Color.fromRGBO(27, 143, 199, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
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
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
