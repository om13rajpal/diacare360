import 'package:diacare360/utils/appbar.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          MyAppBar(title: 'Settings'),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 27, backgroundColor: Color(0xffD9D9D9)),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '+91 8950291327',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff616161),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'He / Him',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff242424),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Om Rajpal',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 17)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 36,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 12, backgroundColor: Color(0xffCECECE)),
                  SizedBox(width: 5),
                  SizedBox(
                    height: 18,
                    width: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.amber,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 137,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 10,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 63.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffc4e4e1),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 50,
                            height: 63.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffc4e4e1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(0xff2F2F2F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color(0xffC4E4E1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: NewSegment(title: 'Connected devices'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: List.generate(2, (index) {
                  return Container(
                    height: 40,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff2F2F2F),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [Text('Blood Glucose'), Text('Meter')],
                        ),
                        Container(
                          height: 10,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff285531),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text('Connected'),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: NewSegment(title: 'Additional settings'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xff2F2F2F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: List.generate(6, (index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 40),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xff464646)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
