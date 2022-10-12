import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/components/screen_routes.dart';
import 'package:ssul_v1/components/style.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Center(
          child: InkWell(
            child: Container(
              decoration: buttonStyle,
              width: 200,
              height: 60,
              child: Center(child: Text('카테고리 변경')),
            ),
            onTap: () {
              Get.toNamed(ScreenRoutes().selectCategoryScreen);
            },
          ),
        ),
        SizedBox(height: 100),
        Text('저장한 이야기'),
        Text('내 이야기 투표 현황'),
        Text('평가한 이야기'),
      ],
    );
  }
}
