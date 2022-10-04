import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/controllers/navigation_controller.dart';
import 'package:ssul_v1/screens/accout_screen/account_screen.dart';
import 'package:ssul_v1/screens/home_screen/home_screen.dart';
import 'package:ssul_v1/screens/ssul_screen/ssul_screen.dart';
import 'package:ssul_v1/screens/test_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  var navigationController = Get.put(NavigationController());
  final _bodyItem = [HomeScreen(), SsulScreen(), AccountScreen(), TestScreen()];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('우와아앙'),
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.home_max_outlined), onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeIndex: navigationController.currentIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          backgroundColor: Colors.white,
          onTap: (index) {
            navigationController.setCurrentIndex(index);
          },
          icons: [
            Icons.home,
            Icons.book,
            Icons.account_circle,
            Icons.settings,
          ],
        ),
        body: _bodyItem[navigationController.currentIndex.value],
      ),
    );
  }
}
