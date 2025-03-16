import 'package:diacare360/screens/graph.dart';
import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/medicinecard.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Vitals extends StatefulWidget {
  const Vitals({super.key});

  @override
  State<Vitals> createState() => _VitalsState();
}

List<Color> gradientColors = [Colors.cyan, Colors.blue];

List<Widget> grid = [
  multiLineChart(),
  lineChart(),
  barchart(),
  circularPercentIndicator(),
];

List<String> gridIcons = [
  "assets/icons/announcement.png",
  "assets/icons/announcement.png",
  "assets/icons/announcement.png",
  "assets/icons/announcement.png",
];

BarChart barchart() => BarChart(barMainData());
LineChart lineChart() => LineChart(mainData());
LineChart multiLineChart() => LineChart(multilineMainData());
CircularPercentIndicator circularPercentIndicator() {
  return CircularPercentIndicator(
    radius: 35,
    lineWidth: 10,
    percent: 0.3,
    animateFromLastPercent: true,
    circularStrokeCap: CircularStrokeCap.round,
    backgroundColor: Color(0xFF242424).withAlpha(50),
    progressColor: Color(0XFF242424),
  );
}

class _VitalsState extends State<Vitals> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "assets/background.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          CustomScrollView(
            slivers: [
              MyAppBar(title: "DiaCare 360"),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vital\ninsights',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff242424),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Upcoming appointment',
                                style: TextStyle(
                                  fontSize: 7.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff6f6f6f),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 124,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xffC4E4E1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 44,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2F2F2F),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '13\n',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffDADADA),
                                                  height: 1,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'MON',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffDADADA),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/clock_dark.png',
                                            width: 12,
                                            cacheWidth: 12,
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            '9:00am',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff242424),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    NewSegment(title: "Today's medication"),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 122,
                      child: ListView.builder(
                        itemCount: 5,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MedicineCard(
                            title: 'Paracetamol 350mg',
                            time: '9:00am',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: NewSegment(title: 'My health'),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.1,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Graph()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF7979),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffDEDEDE),
                                  radius: 12,
                                  child: Image.asset(gridIcons[0], width: 12),
                                ),
                              ),
                              grid[0],
                              Positioned(
                                bottom: 5,
                                left: 5,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '102/80',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff242424),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' mmHg',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff242424),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4A9A9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffDEDEDE),
                                radius: 12,
                                child: Image.asset(gridIcons[1], width: 12),
                              ),
                            ),
                            grid[1],
                            Positioned(
                              bottom: 5,
                              left: 5,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '72',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff242424),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' BPM',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff242424),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4A9A9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffDEDEDE),
                                radius: 12,
                                child: Image.asset(gridIcons[2], width: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                                bottom: 32,
                                left: 5,
                                right: 5,
                              ),
                              child: grid[2],
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '9',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff242424),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Hours',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff242424),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF7979),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffDEDEDE),
                                radius: 12,
                                child: Image.asset(gridIcons[3], width: 12),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 7,
                                  right: 7,
                                  top: 30,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    grid[3],
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "342",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff242424),
                                          ),
                                        ),
                                        Text(
                                          "Kcal",
                                          style: TextStyle(
                                            fontSize: 10,
                                            height: 1,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff242424),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

BarChartData barMainData() {
  return BarChartData(
    barTouchData: BarTouchData(enabled: false),
    titlesData: FlTitlesData(show: false),
    borderData: FlBorderData(show: false),
    gridData: FlGridData(show: false),
    alignment: BarChartAlignment.spaceEvenly,
    maxY: 5,
    minY: 0,
    barGroups: List.generate(7, (index) {
      switch (index) {
        case 0:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 1,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 1:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 2.5,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 2:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 1.75,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 3:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 3,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 4:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 3.2,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 5:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 1.4,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        case 6:
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: 4.5,
                color: Color(0xFF242424),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 5,
                  color: Color(0XFF242424).withAlpha(50),
                ),
              ),
            ],
          );
        default:
          return throw Error();
      }
    }),
  );
}

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(show: false),
    titlesData: FlTitlesData(show: false),
    borderData: FlBorderData(show: false),
    maxX: 30,
    maxY: 150,
    minX: 0,
    minY: 40,
    lineTouchData: LineTouchData(enabled: false),
    lineBarsData: [
      LineChartBarData(
        spots: const [
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
        dotData: FlDotData(show: false),
        color: Color(0xff242424),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XFF242424).withAlpha(50), Colors.transparent],
          ),
        ),
      ),
    ],
  );
}

LineChartData multilineMainData() {
  return LineChartData(
    gridData: FlGridData(show: false),
    titlesData: FlTitlesData(show: false),
    borderData: FlBorderData(show: false),
    maxX: 30,
    maxY: 150,
    minX: 0,
    minY: 40,
    lineTouchData: LineTouchData(enabled: false),
    lineBarsData: [
      LineChartBarData(
        spots: const [
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
        dotData: FlDotData(show: false),
        color: Color(0xff242424),
      ),
      LineChartBarData(
        spots: const [
          FlSpot(0, 96),
          FlSpot(3, 98),
          FlSpot(6, 89),
          FlSpot(9, 112),
          FlSpot(12, 84),
          FlSpot(15, 104),
          FlSpot(18, 91),
          FlSpot(21, 110),
          FlSpot(24, 86),
          FlSpot(27, 101),
          FlSpot(30, 96),
        ],
        isCurved: true,
        dotData: FlDotData(show: false),
        color: Color(0xFFFEFEFE),
      ),
    ],
  );
}
