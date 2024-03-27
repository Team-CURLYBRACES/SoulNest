import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/home_screen/widgets/home_bar_graph/home_bar_graph.dart';
//import 'package:soulnest/presentation/screens/profile_screen/widgets/pieChartData.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/stress_message.dart';

class StressOverView extends StatelessWidget {
  const StressOverView({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      80,
      90,
      60,
      100,
      20,
      90,
      95,
    ];

        // Calculate average weekly stress
    double averageWeeklyStress = weeklySummary.reduce((a, b) => a + b) / weeklySummary.length;

    // Determine stress level
    String stressLevel;
    Color stressColor ;
    
    if (averageWeeklyStress < 50) {
      stressLevel = 'Normal';
      stressColor = const Color.fromARGB(255, 13, 97, 15);
    } else if (averageWeeklyStress >= 50 && averageWeeklyStress < 70) {
      stressLevel = 'Mild Stress';
      stressColor = const Color.fromARGB(255, 214, 139, 0);
    } else {
      stressLevel = 'High Stress';
      stressColor = const Color.fromARGB(255, 176, 77, 2);
    }

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.060),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weekly Stress Levels",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: size.width * 0.88,
            height: size.height * 0.543,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.567569732666016),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  color: const Color.fromRGBO(236, 245, 249, 1),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.018),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "17 Feb - 23 Feb",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 95, 95, 95),
                                  ),
                            ),
                            Text(
                              "Weekly Avg. ",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              averageWeeklyStress.toStringAsFixed(2), // Display average weekly stress,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              stressLevel,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: stressColor,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(0),
                  height: 200,
                  child: BarGraph(
                    weeklySummary: weeklySummary,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 30),
                //   child: PieChartGraph(),
                // ),
                const SizedBox(
                  height: 20,
                ),
                StressMessageBox(
                  stressLevel: stressLevel,
                  onTap: () {
                    // Navigate to the relevant page based on the stress level
                    switch (stressLevel) {
                      case 'Normal':
                        Navigator.pushNamed(context, '/chatbot_screen');
                        break;
                      case 'Mild Stress':
                        Navigator.pushNamed(context, '/therapy_exercises_screen');
                        break;
                      case 'High Stress':
                        Navigator.pushNamed(context, '/find_therapists_screen');
                        break;
                      default:
                        break;
                    }
                  },
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
