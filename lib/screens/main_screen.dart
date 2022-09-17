import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/controllers/navigation_controller.dart';
import 'package:ssul_v1/screens/accout_screen/account_screen.dart';
import 'package:ssul_v1/screens/home_screen/home_screen.dart';
import 'package:ssul_v1/screens/ssul_screen/ssul_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  var navigationController = Get.put(NavigationController());
  final _bodyItem = [HomeScreen(), SsulScreen(), AccountScreen()];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('우와아앙'),
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationController.currentIndex.value,
          onTap: (index) {
            navigationController.setCurrentIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
              ),
              label: 'fairy_tale',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: '내 정보',
            ),
          ],
        ),
        body: _bodyItem[navigationController.currentIndex.value],
      ),
    );
  }
}
