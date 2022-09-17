import 'package:get/get.dart';

class SsulController extends GetxController {
  RxInt ssulIndex = 0.obs;

  void nextIndex() {
    ssulIndex++;
  }

  void refreshIndex() {
    ssulIndex(0);
  }
}
