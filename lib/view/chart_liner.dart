import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rplot/data/abase.dart';
import 'package:rplot/data/liner.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../generated/api/api.pb.dart';

class ChartLiner extends StatelessWidget {
  final ChartDataLiner data;

  const ChartLiner(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final  dataSetIdx = Iterable.generate(data.dataSet.length).toList();

    var items = dataSetIdx.map((idx) {
      final line = data.dataSet[idx];
      final d = (idx % (LineColors.all.length)).toInt();
      var color = LineColors.all[d];

      if (line.color != 0){
        color = Color(line.color.toInt());
      }

      return  LineChartBarData(
        isCurved: false,
        color: color,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: line.data.map((d) => FlSpot(d.x, d.y)).toList(),
      );
    }).toList();

    var legendList = dataSetIdx.map((idx){
      final line = data.dataSet[idx];

      return Text(line.name, style: context.textTheme.bodySmall?.copyWith(color: items[idx].color));
    }).toList();



    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(data.title, style: context.textTheme.headline3),
            Column(
              children: legendList,
            ),
          ],
        ),


        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: LineChart(
                LineChartData(
                  lineBarsData: items,
                ),
              )),
        )
      ],
    );
  }
}
