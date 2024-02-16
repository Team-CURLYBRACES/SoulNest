import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_bar_graph/home_bar_graph.dart';

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
            height: size.height * 0.011,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(61, 1, 83, 145),
                        width: 0.5,
                      ),
                    ),
                    padding: const EdgeInsets.all(0),
                    height: 120,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
