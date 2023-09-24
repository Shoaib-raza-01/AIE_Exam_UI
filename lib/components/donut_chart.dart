import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DonutChartComponent extends StatefulWidget {
  int result;
  final Color textColor;
  final Color primaryColor;
  DonutChartComponent(
      {super.key,
      required this.result,
      required this.textColor,
      required this.primaryColor});

  @override
  DonutChartComponentState createState() => DonutChartComponentState();
}

class DonutChartComponentState extends State<DonutChartComponent> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Correct', double.parse(widget.result.toString()),
          widget.primaryColor),
      ChartData('Wrong', 20, Color.fromRGBO(212, 212, 212, 1)),
    ];
    return SfCircularChart(annotations: <CircularChartAnnotation>[
      CircularChartAnnotation(
          widget: Container(
              child: Text('${widget.result.toString()}%',
                  style: TextStyle(
                      color: widget.textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold))))
    ], series: <CircularSeries>[
      // Renders doughnut chart
      DoughnutSeries<ChartData, String>(
          dataSource: chartData,
          innerRadius: '85%',
          radius: '130%',
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y)
    ]);
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}


// class _ChartData {
//   _ChartData(this.x, this.y, this.color);

//   final String x;
//   final double y;
//   final Color color;
// }





// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: 250,
//           child: Stack(
//             children: [
//               PieChart(
//                 PieChartData(
//                   startDegreeOffset: 250,
//                   sectionsSpace: 0,
//                   centerSpaceRadius: 100,
//                   sections: [
//                     PieChartSectionData(
//                       value: 45,
//                       color: Colors.greenAccent,
//                       radius: 45,
//                       showTitle: false,
//                     ),
//                     PieChartSectionData(
//                       value: 35,
//                       color: Colors.blue.shade900,
//                       radius: 25,
//                       showTitle: false,
//                     ),
//                     PieChartSectionData(
//                       value: 20,
//                       color: Colors.grey.shade400,
//                       radius: 20,
//                       showTitle: false,
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned.fill(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 160,
//                       width: 160,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.shade200,
//                             blurRadius: 10.0,
//                             spreadRadius: 10.0,
//                             offset: const Offset(3.0, 3.0),
//                           ),
//                         ],
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "2305",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }