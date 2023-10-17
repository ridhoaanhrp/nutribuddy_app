import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/prime.dart';
import 'package:nutribuddy_app/Screens/dashboard_screen.dart';
import 'package:nutribuddy_app/Screens/edit_profile.dart';
import 'package:nutribuddy_app/Screens/maps.dart';
import 'package:nutribuddy_app/Screens/statistic_screen.dart';
import 'package:nutribuddy_app/Screens/store_screen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({Key? key}) : super(key: key);

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int selectedIndex = 0;
  final screens = [
    const DashboardScreen(),
    const StoreScreen(),
    const HistoryFood(),
    const NutribuddyMap(),
    const EditProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xFF44B4FF),
          unselectedItemColor: const Color(0xFFDCDCDC),
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(
                label: "",
                activeIcon: Iconify(
                  IconParkOutline.all_application,
                  color: Color(0xFF44B4FF),
                ),
                icon: Iconify(
                  IconParkOutline.all_application,
                  color: Color(0xFFDCDCDC),
                )),
            BottomNavigationBarItem(
                label: "",
                activeIcon:
                    Iconify(Prime.shopping_bag, color: Color(0xFF44B4FF)),
                icon: Iconify(Prime.shopping_bag, color: Color(0xFFDCDCDC))),
            BottomNavigationBarItem(
                label: "",
                activeIcon:
                    Iconify(Eva.bar_chart_2_outline, color: Color(0xFF44B4FF)),
                icon:
                    Iconify(Eva.bar_chart_2_outline, color: Color(0xFFDCDCDC))),
            BottomNavigationBarItem(
                label: "",
                icon: Iconify(Iconoir.maps_arrow_diagonal,
                    color: Color(0xFFDCDCDC)),
                activeIcon: Iconify(Iconoir.maps_arrow_diagonal,
                    color: Color(0xFF44B4FF))),
            BottomNavigationBarItem(
                label: "",
                activeIcon:
                    Iconify(Ic.baseline_person, color: Color(0xFF44B4FF)),
                icon: Iconify(Ic.baseline_person, color: Color(0xFFDCDCDC))),
          ],
        ),
      ),
    );
  }
}
