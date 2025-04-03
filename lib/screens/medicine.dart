import 'package:diacare360/constants/colors.dart';
import 'package:diacare360/utils/accordion.dart';
import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/card.dart';
import 'package:diacare360/utils/text/segment.dart';
import 'package:flutter/material.dart';

class Medicine extends StatefulWidget {
  const Medicine({super.key});

  @override
  State<Medicine> createState() => _MedicineState();
}

bool isExpanded = false;

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
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
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 124,
                    height: 42,
                    decoration: BoxDecoration(
                              color: Color.fromARGB(255, 67, 205, 255),
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
                                'assets/clock_dark.png',
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
                            backgroundColor: Color(0xFF303030),
                            color: const Color.fromARGB(255, 104, 104, 104),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Prescriptions(),
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
                top: 20
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 100,
                  height: 36,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xFF303030),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: Text(
                      "Upload",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
