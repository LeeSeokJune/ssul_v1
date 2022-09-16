import 'package:get/get.dart';
import 'package:ssul_v1/components/data.dart';

class CategoryController extends GetxController {
  var selectedCategory =
      RxList<dynamic>.generate(categoryList.length, (index) => false.obs);
  var cnt = 0.obs;
  void setSelectedCategory(index) {
    selectedCategory[index](!selectedCategory[index].value);
    if (selectedCategory[index] == true) {
      cnt++;
    } else {
      cnt--;
    }
    print(cnt);
  }

  bool selectedMoreThan3() {
    print(cnt >= 3);
    return cnt >= 3;
  }
}
