import 'package:flutter/material.dart';

class NewSegment extends StatelessWidget {
  final String title;
  const NewSegment({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF242424),
            ),
          ),
          Text(
            'View all>',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6F6F6F),
            ),
          ),
        ],
      ),
    );
  }
}
