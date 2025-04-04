import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/text/segment.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          MyAppBar(title: 'Health'),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF202020),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 5,
                      children: [
                        CircularPercentIndicator(
                          radius: 45,
                          circularStrokeCap: CircularStrokeCap.round,
                          lineWidth: 10,
                          backgroundColor: Color(0xFF303030),
                          percent: 0.4,
                          progressColor: Color.fromARGB(255, 104, 104, 104),
                        ),
                        Text(
                          '7210 / 10000',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB3B3B3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      spacing: 10,
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: NewSegment(title: 'Recommended exercises')),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 12),
                    height: 100,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color(0xFF303030),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: NewSegment(title: "Today's yoga special")),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF303030),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
