import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_workspace/chartGraph/ui/chart/line_chart.dart';
import 'package:flutter_workspace/chartGraph/ui/chart/pie_chart.dart';
import 'chart/bar_chart.dart';

class ChartPage extends StatelessWidget {
  List<double> points = [10023,21564,23847,32168,94153,8746321,7463813,5131351,35132138,4843513];

  List<String> labels = [
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
  ];

  ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              CustomPaint(
                size: const Size(150, 150),
                painter: LineChart(points: points, pointSize: 5.0, pointColor: Colors.pinkAccent, lineColor: Colors.pinkAccent, lineWidth: 2.0),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
              CustomPaint(
                size: const Size(150, 150),
                painter: PieChart(),
              ),
              // const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
              // CustomPaint(
              //     size: const Size(250, 250),
              //     foregroundPainter: BarChart(
              //         data: points,
              //         labels: labels,
              //         color: Colors.pinkAccent)),

            ],
          ),
        ),
      ),
    );
  }
}