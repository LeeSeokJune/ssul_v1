import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<IconData> iconList = [
    Icons.home,
    Icons.book,
    Icons.account_circle,
    Icons.settings
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold
      body: Container(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home_max_outlined), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        //navigation bar
        icons: iconList, //list of icons
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() {
          _bottomNavIndex = index;
          print(_bottomNavIndex);
        }),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
