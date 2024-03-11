import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.008,
            bottom: size.height * 0.008,
          ),
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/profile.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Text(
          "Buddhima Fernando",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(
          height: size.height * 0.001,
        ),
        Text(
          "edit profile",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: const Color.fromRGBO(0, 0, 0, 0.35),
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}
