import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../theme/theme.dart';
import 'home_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  static final bottomRoute = '/bottomPage';

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _listofPages = <Widget>[
    const HomePage(),
    const Text(
      'Likes',
    ),
    const Text(
      'Search',
    ),
    const Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _listofPages.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          width: double.infinity,
          // decoration: const BoxDecoration(color: Pallete.amoledBlack),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
            child: GNav(
              // mainAxisAlignment: MainAxisAlignment.center,
              // tabBorderRadius: 30,
              duration: const Duration(milliseconds: 400),
              gap: 8,
              activeColor: Pallete.searchBarColor,
              color: const Color.fromARGB(255, 43, 44, 45),
              backgroundColor: Pallete.lightyellow,
              curve: standardEasing,
              // haptic: bool.fromEnvironment(AutofillHints.addressCity),
              tabs: const [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'HOME',
                ),
                GButton(
                  icon: CupertinoIcons.list_bullet_below_rectangle,
                  text: 'EXPLORE',
                ),
                GButton(
                  icon: CupertinoIcons.drop,
                  text: 'PARENTING',
                ),
                GButton(
                  icon: CupertinoIcons.profile_circled,
                  text: 'PROFILE',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
