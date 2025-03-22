import 'package:flutter/material.dart';
import 'package:side_sheet_material3/side_sheet_material3.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      floating: true,
      forceMaterialTransparency: true,
      centerTitle: true,
      title: Text(title),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Color(0xff242424),
      ),
      elevation: 0,
      snap: true,
      actionsPadding: EdgeInsets.all(10),
      actions: [
        IconButton(
          onPressed: () {
            showModalSideSheet(context, body: Text("announcements"), header: "Announcements", transitionDuration: Duration(milliseconds: 300));
          },
          icon: Image.asset(
            'assets/icons/announcement.png',
            width: 18,
            cacheWidth: 18,
          ),
        ),
      ],
      pinned: false,
      expandedHeight: 100,
      leading: IconButton(
        onPressed: () {
          print('logout');
        },
        icon: Image.asset('assets/icons/logout.png', cacheWidth: 20, width: 20),
      ),
    );
  }
}
