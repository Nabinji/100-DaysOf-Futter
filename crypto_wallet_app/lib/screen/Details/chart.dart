import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ShowLineChart extends StatelessWidget {
  const ShowLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: const LineTouchData(
          enabled: false,
        ),
        gridData: const FlGridData(
          show: false,
        ),
        titlesData: const FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        // minX: 0,
        maxX: 12,
        maxY: 4,
        minY: 0,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(1, 1.7),
              const FlSpot(3, 2.5),
              const FlSpot(6, 2.4),
              const FlSpot(8, 2.8),
              const FlSpot(10, 2.5),
              const FlSpot(11, 2.6),
            ],
            isCurved: true,
            color: Colors.orangeAccent,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.amber[50],
            ),
          ),
        ],
      ),
    );
  }
}
