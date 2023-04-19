import 'package:flutter/material.dart';
import 'package:test_yakadir/custom-fonts/yakadir_icons_icons.dart';
import 'package:test_yakadir/theme/themes.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 2;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline_rounded),
          label: 'Projets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: 'Espaces',
        ),
        BottomNavigationBarItem(
          icon: Icon(YakadirIcons.group),
          label: 'Yakadir',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: context.theme.primaryColor,
      unselectedItemColor: context.themeColors.greenGray,
      onTap: _onItemTapped,
    );
  }
}
