import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profle_screen_session_card.dart';

class SheduledSessions extends StatelessWidget {
  const SheduledSessions({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.060),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Sheduled Sessions",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SessionCard(),
                SizedBox(
                  width: 10,
                ),
                SessionCard(),
                SizedBox(
                  width: 10,
                ),
                SessionCard(),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
