import 'package:get/get.dart';

class SsulController extends GetxController {
  RxInt ssulIndex = 0.obs;
  RxString register_ssul_text = ''.obs;
  void nextIndex() {
    ssulIndex++;
  }

  void refreshIndex() {
    ssulIndex(0);
  }

  void changeRegisterText(text) {
    register_ssul_text(text);
  }

  int getRegisterTextLength() {
    return register_ssul_text.value.length;
  }
}
