import 'package:diacare360/utils/medicinecard.dart';
import 'package:diacare360/utils/newsegment.dart';
import 'package:flutter/material.dart';
import 'package:diacare360/utils/appbar.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            MyAppBar(title: "DiaCare 360"),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  NewSegment(title: "Today's medication"),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 122,
                    child: ListView.builder(
                      itemCount: 5,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MedicineCard(title: 'Paracetamol 350mg', time: '9:00am',);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
