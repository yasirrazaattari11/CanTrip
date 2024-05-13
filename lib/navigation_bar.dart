import 'package:cantrip/Constants/colors.dart';
import 'package:cantrip/Screens/chat_screen.dart';
import 'package:cantrip/Screens/fav_screen.dart';
import 'package:cantrip/Screens/home_screen.dart';
import 'package:cantrip/Screens/locations.dart';
import 'package:cantrip/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> iconList = [
    Icons.home,
    Icons.location_on,
    Icons.message_outlined,
    Icons.favorite,
    Icons.perm_identity_outlined
  ];
  int page = 0;
  int pageview = 0;
  PageController pageController = PageController(initialPage: 0);
  Widget pageViewSection() {
    return PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: const [
          HomeScreen(),
          Locations(),
          ChatScreen(),
          FavScreen(),
          Settings()
        ]
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      body: pageViewSection(),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeColor: primary,
          activeIndex: page,
          inactiveColor: Colors.black,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.none,
          onTap: (p0) {
            setState(() {
              pageview = p0;
              pageController.animateToPage(p0,
                  duration: const Duration(milliseconds: 200), curve: Curves.linear);
            });
          },
        )
    );
  }
}
