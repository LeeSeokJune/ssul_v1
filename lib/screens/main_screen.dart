import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/controllers/navigation_controller.dart';
import 'package:ssul_v1/screens/accout_screen/account_screen.dart';
import 'package:ssul_v1/screens/home_screen/home_screen.dart';
import 'package:ssul_v1/screens/ssul_screen/ssul_screen.dart';

import 'setting_screen/setting_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  var navigationController = Get.put(NavigationController());
  final _bodyItem = [
    HomeScreen(),
    SsulScreen(),
    AccountScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('우와아앙'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey,
        ),
        extendBody: true,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 3,
          backgroundColor: Colors.black,
          currentIndex: navigationController.currentIndex.value,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey,
          // showUnselectedLabels: true,
          onTap: (index) {
            navigationController.setCurrentIndex(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_rounded), label: '이야기'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: '마이페이지'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
          ],
        ),
        body: _bodyItem[navigationController.currentIndex.value],
      ),
    );
  }
}
