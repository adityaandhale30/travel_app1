import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:travel_app/view/home.dart';
import 'package:travel_app/view/profile.dart';
import 'package:travel_app/view/schedule.dart';
import 'package:travel_app/view/Search/search.dart';

class PersistantBottomNavBarCustom extends StatelessWidget {
  PersistantBottomNavBarCustom({super.key});
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Schedule(),
      const Search(),
      Container(),
      const Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
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
      // onItemSelected: (value) {},
      context,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month_outlined),
        ),
        PersistentBottomNavBarItem(
          icon: Container(
            height: 50,
            width: 50,
            decoration:const BoxDecoration(
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
          icon: const Icon(Icons.chat_bubble_outline_outlined),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_2_outlined),
        ),
      ],
      screens: _buildScreens(),
    );
  }
}
