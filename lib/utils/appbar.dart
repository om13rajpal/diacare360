import 'package:diacare360/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
        color: AppColors.secondary,
      ),
      elevation: 0,
      snap: true,
      actionsPadding: EdgeInsets.all(10),
      actions: [
        IconButton(
          onPressed: () {
            // showModalSideSheet(context, body: Text("announcements"), header: "Announcements", transitionDuration: Duration(milliseconds: 300));
          },
          icon: LucideIconWidget(
            icon: LucideIcons.bell,
            color: AppColors.secondary,
            size: 16,
          ),
        ),
      ],
      pinned: false,
      expandedHeight: 100,
      leading: IconButton(
        onPressed: () {
          print('logout');
        },
        icon: LucideIconWidget(
          icon: LucideIcons.chevronLeft,
          color: AppColors.secondary,
          size: 17,
        ),
      ),
    );
  }
}
