import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/screen_routes.dart';
import 'screens/select_category_screen/select_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Suit', backgroundColor: Colors.white),
      home: SelectCategoryScreen(),
      getPages: pages,
    );
  }
}
