import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt currentIndex = 1.obs;

  void setCurrentIndex(index) {
    currentIndex(index);
  }
}
