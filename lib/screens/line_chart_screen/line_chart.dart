

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: _createSpots(),
            isCurved: false,
            barWidth: 3,
            color: Colors.blue, // 'colors'를 'color'로 변경
            dotData: FlDotData(show: true),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _createSpots() {
    final List<double> xData = [0, 1, 2, 3, 4, 5, 6, 7, 8];
    final List<double> yData = [10, 15, 16, 11, 17, 12, 15, 13, 13];

    List<FlSpot> spots = [];
    for (int i = 0; i < xData.length; i++) {
      spots.add(FlSpot(xData[i], yData[i]));
    }
    return spots; // 올바른 리턴 값 추가
  }
} // 여기에 닫는 중괄호 추가
