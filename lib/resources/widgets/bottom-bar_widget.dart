import 'package:flutter/material.dart';
import 'package:flutter_app/bootstrap/helpers.dart';

import '../pages/add_page.dart';
import '../pages/explore_page.dart';
import '../pages/home_page.dart';
import '../pages/marketplace_page.dart';
import '../pages/profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _bottomNavIndex = 0;

  List<BottomNavigationBarItem> iconList = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search_rounded),
      label: 'Eksplore',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_box_outlined),
      activeIcon: Icon(Icons.add_box_rounded),
      label: 'Add',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.storefront_outlined),
      activeIcon: Icon(Icons.storefront_rounded),
      label: 'Notification',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outlined),
      activeIcon: Icon(Icons.person_rounded),
      label: 'Notification',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavIndex,
        children: [
          HomePage(),
          ExplorePage(),
          AddPage(),
          MarketplacePage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: iconList,
        currentIndex: _bottomNavIndex,
        onTap: (value) {
          setState(() {
            _bottomNavIndex = value;
          });
        },
        selectedItemColor: ThemeColor.get(context).bottomTabBarIconSelected,
        unselectedItemColor: ThemeColor.get(context).bottomTabBarIconUnselected,
        backgroundColor: ThemeColor.get(context).bottomTabBarBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
