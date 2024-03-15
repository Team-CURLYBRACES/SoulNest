import 'package:flutter/material.dart';
import 'package:soulnest/components/test_graph.dart'; // Import the file where _BarChart is defined

class GraphPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graph Page'),
      ),
      body: Center(
        child: BarChartSample3(), // Use BarChartSample3 widget here
      ),
    );
  }
}
