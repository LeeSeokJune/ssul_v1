import 'package:get/get.dart';

class SsulController extends GetxController {
  RxInt ssulIndex = 0.obs;
  RxString register_ssul_text = ''.obs;
  RxString category_text = ''.obs;
  RxString left_option_text = ''.obs;
  RxString right_option_text = ''.obs;

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

  void changeCategoryText(text) {
    category_text(text);
  }

  void changeLeftText(text) {
    left_option_text(text);
  }

  void changeRightText(text) {
    right_option_text(text);
  }

  dynamic getRegisterData() {
    var data = {
      'contents': register_ssul_text.value,
      'left_option': left_option_text.value,
      'right_option': right_option_text.value,
      'user': 'indians3',
    };
    print(data);
    return data;
  }
}
