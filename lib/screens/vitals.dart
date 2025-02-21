import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/medicinecard.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:flutter/material.dart';

class Vitals extends StatelessWidget {
  const Vitals({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
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
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFECB3B3),
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
                          child: Image.asset(
                            'assets/icons/announcement.png',
                            width: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }, childCount: 4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
