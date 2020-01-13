import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:lateral_menu/src/pages/page1.dart';
import 'package:lateral_menu/src/pages/page2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ScreenHiddenDrawer> items = List();
  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Screen 1",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        FirstPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Screen2',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 30),
          colorLineSelected: Colors.orange,
        ),
        SecondPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: items,
      backgroundColorMenu: Colors.orangeAccent,
      backgroundColorAppBar: Colors.orange,
      verticalScalePercent: 95,
      slidePercent: 40,
    );
  }
}
