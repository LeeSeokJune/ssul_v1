import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/components/style.dart';

import '../../components/screen_routes.dart';

class SsulRegisterScreen extends StatelessWidget {
  const SsulRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이야기 등록'),
      ),
      body: Container(
        width: Get.size.width,
        child: Column(
          children: [
            SizedBox(height: 30),
            _customTextField(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buttonText(text: '선택지 1'),
                _buttonText(text: '선택지 2'),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              child: Container(
                decoration: blueRadiusLine,
                width: 200,
                height: 60,
                child: Center(child: Text('등록')),
              ),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: Text('등록하시겠습니까?'),
                    content: Text('수정 및 삭제 할수없습니다.'),
                    actions: [
                      TextButton(
                        child: Text('예'),
                        onPressed: () {
                          Get.back();
                          Get.back();
                        },
                      ),
                      TextButton(
                        child: Text('아니오'),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Column _buttonText({text}) {
    return Column(
      children: [
        Text('${text}'),
        Container(
          width: 100,
          height: 30,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _customTextField() {
    return Container(
      width: Get.size.width * 0.9,
      child: TextField(
        maxLines: 10,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
