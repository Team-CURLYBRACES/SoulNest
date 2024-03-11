import 'package:soulnest/presentation/screens/home_screen/widgets/home_bar_graph/home_single_bar.dart';

class BardData {
  final double sunDate;
  final double monDate;
  final double tueDate;
  final double wedDate;
  final double thuDate;
  final double friDate;
  final double satDate;

  BardData({
    required this.sunDate,
    required this.monDate,
    required this.tueDate,
    required this.wedDate,
    required this.thuDate,
    required this.friDate,
    required this.satDate,
  });

  List<SingleBar> barData = [];

  void inisializedBarData() {
    barData = [
      SingleBar(x: 0, y: sunDate),
      SingleBar(x: 1, y: monDate),
      SingleBar(x: 2, y: tueDate),
      SingleBar(x: 3, y: wedDate),
      SingleBar(x: 4, y: thuDate),
      SingleBar(x: 5, y: friDate),
      SingleBar(x: 6, y: satDate),
    ];
  }
}
