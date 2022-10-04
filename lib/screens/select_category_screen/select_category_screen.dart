import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/components/data.dart';
import 'package:ssul_v1/components/screen_routes.dart';
import 'package:ssul_v1/components/style.dart';
import 'package:ssul_v1/controllers/category_controller.dart';

class SelectCategoryScreen extends StatelessWidget {
  SelectCategoryScreen({Key? key}) : super(key: key);
  var categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('관심있는 카테고리 선택'),
      ),
      body: Center(
        child: Container(
          width: Get.size.width - 40,
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                '3개 이상 선택해주세요',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (var index = 0; index < categoryList.length; index++)
                    _categoryButton(index: index)
                ],
              ),
              SizedBox(height: 30),
              _nextButton(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nextButton() {
    return InkWell(
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 3),
              blurRadius: 5.0,
              spreadRadius: 3.0,
            ),
            BoxShadow(
              color: Colors.white,
            ),
          ],
        ),
        child: Center(
          child: Text(
            '다음',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      onTap: () {
        if (categoryController.selectedMoreThan3()) {
          Get.toNamed(ScreenRoutes().main);
        } else {
          Get.snackbar('카테고리 선택', '카테고리를 3개 이상 선택해주세요!');
        }
      },
    );
  }

  Widget _categoryButton({index}) {
    return InkWell(
      child: Obx(
        () => Container(
          width: 140,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(
            //   color: categoryController.selectedCategory[index].value
            //       ? Colors.blue
            //       : Colors.grey,
            //   width: 2,
            // ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 3),
                blurRadius: 5.0,
                spreadRadius: -1.0,
              ),
              BoxShadow(
                color: Colors.white,
              ),
            ],
          ),
          child: Center(
            child: Text(
              '${categoryList[index]}',
              style: TextStyle(
                fontWeight: categoryController.selectedCategory[index].value
                    ? FontWeight.bold
                    : FontWeight.w400,
                color: categoryController.selectedCategory[index].value
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        categoryController.setSelectedCategory(index);
      },
    );
  }
}
