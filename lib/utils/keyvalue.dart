import 'package:flutter/material.dart';

class KeyValue extends StatelessWidget {
  final String head;
  final String value;
  final String unit;
  const KeyValue({super.key, required this.head, required this.value, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.5),
      child: Row(
        children: [
          Text(
            "$head:",
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF565656),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 3),
          Text(
            "$value $unit",
            style: TextStyle(
              fontSize: 12,
              color: Color(0XFF1F1F1F),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
