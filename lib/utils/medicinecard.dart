import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MedicineCard extends StatelessWidget {
  final String title;
  final String time;
  const MedicineCard({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xff303030),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Color.fromARGB(204, 249, 249, 249),
                      width: 2,
                    ),
                  ),
                  child: Image.asset(
                    'assets/icons/medicine.png',
                    width: 14,
                    cacheWidth: 14,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color.fromARGB(216, 249, 249, 249),
                        fontWeight: FontWeight.w500,
                        fontSize: 13.5,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Take one tablet once a day',
                      style: TextStyle(
                        color: Color.fromARGB(216, 249, 249, 249),
                        fontWeight: FontWeight.w300,
                        fontSize: 9.5,
                      ),
                    ),
                    SizedBox(height: 5),
                    FlutterSwitch(
                      value: false,
                      onToggle: (value) {
                        value = !value;
                      },
                      toggleSize: 10,
                      activeColor: Color(0XFF2F2F2F),
                      inactiveToggleColor: Color(0XFF2F2F2F),
                      activeToggleColor: Color.fromARGB(255, 255, 255, 255),
                      inactiveColor: Color(0XffAEAEAE),
                      borderRadius: 20,
                      padding: 1.5,
                      width: 25,
                      height: 13,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 6),
          Divider(color: Color.fromARGB(255, 249, 249, 249), thickness: 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Due to be taken at',
                style: TextStyle(
                  fontSize: 9.5,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(216, 249, 249, 249),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    width: 11,
                    cacheWidth: 11,
                  ),
                  SizedBox(width: 5),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 9.5,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(216, 249, 249, 249),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
