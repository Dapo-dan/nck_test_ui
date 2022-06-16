import 'package:flutter/material.dart';
import 'package:nck_test_ui/screens/mainpages/activity.dart';
import 'package:nck_test_ui/screens/mainpages/card.dart';
import 'package:nck_test_ui/screens/mainpages/home.dart';
import 'package:nck_test_ui/screens/mainpages/profile.dart';

import '../../utils/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _MainPageState();
}

class _MainPageState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List _pages = [
    HomePage(),
    CardPage(),
    ActivityPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
        selectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.035,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400),
        unselectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.03,
            color: Colors.grey.shade300,
            fontWeight: FontWeight.w400),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              activeIcon: Icon(Icons.payments),
              label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity_outlined),
              activeIcon: Icon(Icons.local_activity),
              label: 'Activty'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile')
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
