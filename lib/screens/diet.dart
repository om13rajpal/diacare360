import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/keyvalue.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});

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
              MyAppBar(title: "Diet"),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's\nDiet",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF242424),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyValue(
                            head: "Calories",
                            value: "712",
                            unit: 'Kcal',
                          ),
                          KeyValue(
                            head: "Calories taken",
                            value: "219",
                            unit: 'Kcal',
                          ),
                          KeyValue(head: "Protein", value: "16", unit: 'grams'),
                          KeyValue(head: "Meals done", value: "2", unit: ''),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15),
                  child: NewSegment(title: "Current meal"),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 142,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 15),
                  child: NewSegment(title: "Upcoming meals"),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Meal"),
                                content: Text("Meal details"),

                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 13),
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFD9D9D9),
                          ),
                        ),
                      );
                    },
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
