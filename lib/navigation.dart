import 'package:diacare360/screens/settings.dart';
import 'package:diacare360/screens/vitals.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _currentPage = [
    Vitals(),
    Settings(),
    Settings(),
    Settings(),
    Settings(),
  ];

  final List<String> _icons = [
    'assets/icons/navbar/home_selected.png',
    'assets/icons/navbar/health.png',
    'assets/icons/navbar/diet.png',
    'assets/icons/navbar/medicine.png',
    'assets/icons/navbar/settings.png',
  ];

  void _onItemTapped(int index) => setState(() {
    _selectedIndex = index;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: _currentPage[_selectedIndex],
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
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Color(0xff0F0F0F),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: List.generate(
            _icons.length,
            (index) => BottomNavigationBarItem(
              icon: Image.asset(_icons[index], width: 16, cacheWidth: 16),
              label: '',
            ),
          ),
        ),
      ),
    );
  }
}
