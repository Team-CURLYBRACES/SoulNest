import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_bar_graph/home_bar_graph.dart';

class ActiveMinutes extends StatefulWidget {
  const ActiveMinutes({
    super.key,
  });

  @override
  State<ActiveMinutes> createState() => _ActiveMinutesState();
}

class _ActiveMinutesState extends State<ActiveMinutes> {
  List<double> weeklySummary = [
    20,
    40,
    30,
    35,
    6,
    40,
    15,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Weekly Stress Level",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200,
            child: BarGraph(
              weeklySummary: weeklySummary,
            ),
          ),
        ],
      ),
    );
  }
}
