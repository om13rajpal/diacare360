import 'package:diacare360/utils/appbar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            MyAppBar(title: 'Heart Rate'),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Heart Rate",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF242424),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '72',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF242424),
                            ),
                          ),
                          TextSpan(
                            text: ' BPM',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF242424),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
                child: SizedBox(height: 230, child: LineChart(lineChartData())),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Average',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          '78',
                          style: TextStyle(
                            fontSize: 28,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          'BPM',
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                      child: Container(width: 1, color: Color.fromARGB(255, 152, 152, 152)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Average',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          '78',
                          style: TextStyle(
                            fontSize: 28,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          'BPM',
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                      child: Container(width: 1, color: Color.fromARGB(255, 152, 152, 152)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Average',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          '78',
                          style: TextStyle(
                            fontSize: 28,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          'BPM',
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

LineChartData lineChartData() {
  return LineChartData(
    gridData: FlGridData(show: false),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 20,
          getTitlesWidget: (value, meta) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                value.toInt().toString(),
                style: TextStyle(color: Color(0xFF242424), fontSize: 10),
              ),
            );
          },
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 10,
          getTitlesWidget: (value, meta) {
            return Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                value.toInt().toString(),
                style: TextStyle(color: Color(0xFF242424), fontSize: 10),
              ),
            );
          },
        ),
      ),
    ),
    lineTouchData: LineTouchData(enabled: true, handleBuiltInTouches: true),
    borderData: FlBorderData(show: false),
    minX: 0,
    maxX: 30,
    minY: 60,
    maxY: 120,
    lineBarsData: [
      LineChartBarData(
        dotData: FlDotData(show: false),
        barWidth: 3,
        color: Color(0xFF242424),
        spots: [
          FlSpot(0, 95),
          FlSpot(3, 100),
          FlSpot(6, 90),
          FlSpot(9, 110),
          FlSpot(12, 85),
          FlSpot(15, 105),
          FlSpot(18, 92),
          FlSpot(21, 108),
          FlSpot(24, 87),
          FlSpot(27, 102),
          FlSpot(30, 95),
        ],
        isCurved: true,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF242424).withAlpha(50), Colors.transparent],
          ),
        ),
      ),
    ],
  );
}
