import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/medicinecard.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:flutter/material.dart';

class Medicine extends StatelessWidget {
  const Medicine({super.key});

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
              MyAppBar(title: 'Medication'),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
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
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              SliverToBoxAdapter(
                child: NewSegment(title: "Today's Medication"),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 122,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MedicineCard(
                        title: 'Paracetamol 350mg',
                        time: '9:00am',
                      );
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 40)),
              SliverToBoxAdapter(
                child: NewSegment(title: 'Medicine cycle this week'),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 14)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Paracetamol',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: LinearProgressIndicator(
                                borderRadius: BorderRadius.circular(20),
                                backgroundColor: Color(0xffA8A8A8),
                                color: Colors.black,
                                minHeight: 4,
                                value: 0.5,
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              '(2 / 5)',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 40)),
              SliverToBoxAdapter(child: NewSegment(title: 'Prescriptions')),
            ],
          ),
        ],
      ),
    );
  }
}
