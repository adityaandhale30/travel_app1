
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:travel_app/view/Home/home_screen.dart';
import 'package:travel_app/view/Profile/profile_screeb.dart';
import 'package:travel_app/view/Schedule/schedule_screen.dart';
import 'package:travel_app/view/Search/search_screen.dart';

class PersistantBottomNavBarCustom extends StatelessWidget {
  PersistantBottomNavBarCustom({super.key});
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const ScheduleScreen(),
      const SearchScreen(),
      Container(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {


    /// PersistentTabView used here for which we can give style and  activeColorPrimary: inactiveColorPrimary : will work if we didnt give  color : 

    return PersistentTabView(
      backgroundColor: Colors.white,
      decoration: const NavBarDecoration(
        colorBehindNavBar: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(60, 100),
          topRight: Radius.elliptical(60, 100),
        ),
      ),
      navBarStyle: NavBarStyle.style6,
      navBarHeight: 96,
      controller: _controller,
      context,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
          activeColorPrimary: const Color.fromRGBO(13, 110, 253, 1),
          inactiveColorPrimary: const Color.fromRGBO(125, 132, 141, 1),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.calendar_month_outlined,
            size: 30,
          ),
          activeColorPrimary: const Color.fromRGBO(13, 110, 253, 1),
          inactiveColorPrimary: const Color.fromRGBO(125, 132, 141, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(13, 110, 253, 1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.chat_bubble_outline_outlined,
            size: 25,
          ),
          activeColorPrimary: const Color.fromRGBO(13, 110, 253, 1),
          inactiveColorPrimary: const Color.fromRGBO(125, 132, 141, 1),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.person_2_outlined,
            size: 30,
          ),
          activeColorPrimary: const Color.fromRGBO(13, 110, 253, 1),
          inactiveColorPrimary: const Color.fromRGBO(125, 132, 141, 1),
        ),
      ],
      screens: _buildScreens(),
    );
  }
}
