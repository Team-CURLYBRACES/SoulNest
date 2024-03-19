import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_bar_graph/home_bar_graph.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/pieChartData.dart';

class StressOverView extends StatelessWidget {
  const StressOverView({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      20,
      40,
      30,
      35,
      6,
      40,
      15,
    ];
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.060),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sheduled Sessions",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            width: size.width * 0.88,
            height: size.height * 0.543,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.567569732666016),
              color: const Color.fromRGBO(247, 252, 255, 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.018),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "2024, Feb",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          Text(
                            "Monthly Avg. ",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "47",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            "normal",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(247, 252, 255, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(0),
                  height: 180,
                  child: BarGraph(
                    weeklySummary: weeklySummary,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: PieChartGraph(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StressValue extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const StressValue({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 11,
              height: 11,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(title),
          ],
        ),
        Text(value)
      ],
    );
  }
}
