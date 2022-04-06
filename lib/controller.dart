import 'calendar.dart';
import 'exchange.dart';
import 'home.dart';
import 'paiment.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _currentTab = 0;
  final List<Widget> _screens = [Home(), Calendar(), Exchange(), Paiement()];
  final PageStorageBucket _bucket = PageStorageBucket();

  Widget _currentScreen = Home();

  //final autoSizeGroup = AutoSizeGroup();

  //late AnimationController _animationController;
  //late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.currency_exchange,
    Icons.shopping_basket,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(child: _currentScreen, bucket: _bucket),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff4D89EC),
          child: const Icon(Icons.qr_code),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          inactiveColor: Color(0x774D89EC),
          activeColor: Color(0xff4D89EC),
          iconSize: 30,
          icons: iconList,
          activeIndex: _currentTab,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() {
            _currentTab = index;
            _currentScreen = _screens[_currentTab];
          }),
        ));
  }
}
