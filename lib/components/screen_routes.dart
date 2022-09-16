import 'package:get/get.dart';
import 'package:ssul_v1/screens/main_screen.dart';
import 'package:ssul_v1/screens/select_category_screen/select_category_screen.dart';

class ScreenRoutes {
  final main = '/main';
  final selectCategoryScreen = '/category';
}

final pages = [
  GetPage(name: ScreenRoutes().main, page: () => MainScreen()),
  GetPage(
      name: ScreenRoutes().selectCategoryScreen,
      page: () => SelectCategoryScreen()),
];
