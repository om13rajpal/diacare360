import 'package:diacare360/screens/dashboard.dart';
import 'package:diacare360/screens/diet.dart';
import 'package:diacare360/screens/health.dart';
import 'package:diacare360/screens/medicine.dart';
import 'package:diacare360/screens/settings.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

int _currentIndex = 0;

List<Widget> _buildScreens = [
  Dashboard(),
  Health(),
  Medicine(),
  Diet(),
  Settings(),
];

final List<String> _icons = [
  'assets/navbar/home.png',
  'assets/navbar/health.png',
  'assets/navbar/diet.png',
  'assets/navbar/medicine.png',
  'assets/navbar/settings.png',
];

final List<String> _selectedIcons = [
  'assets/navbar/home_selected.png',
  'assets/navbar/home_selected.png',
  'assets/navbar/home_selected.png',
  'assets/navbar/home_selected.png',
  'assets/navbar/home_selected.png',
];

class _NavigationState extends State<Navigation> {
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens[_currentIndex],
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Container bottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff0F0F0F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(27),
          topRight: Radius.circular(27),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(27),
          topRight: Radius.circular(27),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            backgroundColor: Color(0xff202020),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: List.generate(
              _icons.length,
              (index) => BottomNavigationBarItem(
                icon: Image.asset(
                  (index == _currentIndex)
                      ? _selectedIcons[index]
                      : _icons[index],
                  key: ValueKey(_currentIndex),
                  width: 16,
                  cacheWidth: 16,
                ),
                label: '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
