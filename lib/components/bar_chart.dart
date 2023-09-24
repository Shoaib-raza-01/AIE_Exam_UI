// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class BarChartComponent extends StatefulWidget {
//   List data;
//   BarChartComponent({super.key, required this.data});

//   @override
//   State<BarChartComponent> createState() => _BarChartComponentState();
// }

// class _BarChartComponentState extends State<BarChartComponent> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text("l"),
//     );
//   }
// }

import 'package:aie/screens/android_large_19.dart';
import 'package:flutter/material.dart';

// import fl_chart
import 'package:fl_chart/fl_chart.dart';

class BarChartComponent extends StatefulWidget {
  final List<DataModel> data;
  BarChartComponent({super.key, required this.data});

  @override
  State<BarChartComponent> createState() => _BarChartComponentState();
}

class _BarChartComponentState extends State<BarChartComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotatedBox(quarterTurns:2,
            child: Image(
              image: AssetImage('assets/images/Arrow1.png')),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text('Time')),
            RotatedBox(quarterTurns: 4,
            child: Image(image: AssetImage('assets/images/Arrow1.png')),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 230,
              width: 300,
              child: BarChart(BarChartData(
                  titlesData: const FlTitlesData(
                      topTitles: AxisTitles(), rightTitles: AxisTitles()),
                  borderData: FlBorderData(
                      border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide.none,
                    bottom: BorderSide.none,
                  )),
                  groupsSpace: 10,
                  gridData: const FlGridData(
                      drawVerticalLine: false, drawHorizontalLine: true),
                  barGroups: _barGroup())),
            ),
            SizedBox(
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              RotatedBox(quarterTurns: 1,
              child: Image(image: AssetImage('assets/images/Arrow1.png')),
              ),
              Text('Questions'),
              RotatedBox(quarterTurns: 3,
              child: Image(image: AssetImage('assets/images/Arrow1.png')),
              ),
                      ],),
            )
          ],
        )
      ],
    ));
  }

  List<BarChartGroupData> _barGroup() {
    List<BarChartGroupData> list = [];
    for (int i = 0; i < widget.data.length; i++) {
      list.add(BarChartGroupData(x: i+1, barRods: [
        BarChartRodData(
            toY: double.parse(widget.data[i].value),
            width: 15,
            color: widget.data[i].isCorrect ? const Color.fromARGB(255, 51, 211, 56) : const Color.fromARGB(255, 255, 34, 19)),
      ]));
    }
    return list;
  }
}
