import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/components/style.dart';
import 'package:ssul_v1/controllers/ssul_controller.dart';

class SsulRegisterScreen extends StatelessWidget {
  SsulRegisterScreen({Key? key}) : super(key: key);
  var ssulController = Get.put(SsulController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이야기 등록'),
        backgroundColor: Colors.grey,
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Obx(
          () => Container(
            width: Get.size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  _customTextField(),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: Get.size.width / 2 + 20),
                    child: Text(
                        '글자수 : ${ssulController.getRegisterTextLength()}',
                        textAlign: TextAlign.right),
                  ),
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
                      decoration: buttonStyle,
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
          ),
        ),
      ),
    );
  }

  Column _buttonText({text}) {
    return Column(
      children: [
        Text('${text}'),
        Container(
          width: 130,
          height: 50,
          decoration: buttonStyle,
          child: TextField(
            textAlign: TextAlign.center,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
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
      decoration: buttonStyle,
      child: TextField(
        cursorColor: Colors.grey,
        maxLines: 10,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        onChanged: (value) {
          ssulController.changeRegisterText(value);
        },
      ),
    );
  }
}
