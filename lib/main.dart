import 'package:diacare360/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiaCare360());
}

class DiaCare360 extends StatelessWidget {
  const DiaCare360({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiaCare360',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xFF242424),
        scaffoldBackgroundColor: Color(0xFFF2F0EF),
      ),
      home: Navigation(),
    );
  }
}
