import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_stress_overview.dart';

class PieChartGraph extends StatelessWidget {
  const PieChartGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(61, 1, 83, 145),
          width: 0.2,
        ),
      ),
      padding: const EdgeInsets.all(0),
      height: 140,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          radius: 10,
                          value: 0,
                          title: "High",
                          showTitle: false,
                          color: const Color.fromRGBO(255, 163, 112, 1),
                        ),
                        PieChartSectionData(
                            radius: 10,
                            value: 0,
                            title: "Medium",
                            showTitle: false,
                            color: const Color.fromRGBO(255, 220, 151, 1)),
                        PieChartSectionData(
                            radius: 10,
                            value: 100,
                            title: "Normal",
                            showTitle: false,
                            color: const Color.fromRGBO(24, 130, 188, 1)),
                        PieChartSectionData(
                          radius: 10,
                          value: 0,
                          title: "Low",
                          showTitle: false,
                          color: const Color.fromRGBO(158, 221, 255, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StressValue(
                    title: "High 80-99",
                    value: "0%",
                    color: Color.fromRGBO(255, 163, 112, 1),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  StressValue(
                    title: "Medium 60-79",
                    value: "0%",
                    color: Color.fromRGBO(255, 220, 151, 1),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  StressValue(
                    title: "Normal 30-59",
                    value: "100%",
                    color: Color.fromRGBO(24, 130, 188, 1),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  StressValue(
                    title: "Low 1-29",
                    value: "0%",
                    color: Color.fromRGBO(158, 221, 255, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
