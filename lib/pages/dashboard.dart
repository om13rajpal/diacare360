import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text('DiaCare360'),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(child: Text("This is my dashboard page"))),
    );
  }
}
