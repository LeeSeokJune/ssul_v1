import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssul_v1/components/screen_routes.dart';
import 'package:ssul_v1/components/style.dart';
import 'package:ssul_v1/controllers/ssul_controller.dart';

import 'data/sample_data.dart';

class SsulScreen extends StatelessWidget {
  SsulScreen({Key? key}) : super(key: key);
  var ssulController = Get.put(SsulController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size.infinite.width,
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              width: 300,
              height: 300,
              decoration: buttonStyle,
              child: Center(
                child: Text(
                    '${sampleData[ssulController.ssulIndex.value]['contents']}'),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _selectButton(name: 'leftButtonText'),
                InkWell(
                  child: Container(
                    decoration: buttonStyle,
                    width: 100,
                    height: 30,
                    child: Center(child: Text('신고하기')),
                  ),
                  onTap: () {
                    Get.dialog(
                      AlertDialog(
                        title: Text('신고하시겠습니까?'),
                        content: Text('신고수가 누적되면 운영자 확인후 삭제됩니다.'),
                        actions: [
                          TextButton(
                            child: Text('예'),
                            onPressed: () {
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
                _selectButton(name: 'rightButtonText'),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              child: Container(
                width: 100,
                height: 30,
                decoration: buttonStyle,
                child: Center(child: Text('처음부터')),
              ),
              onTap: () {
                ssulController.refreshIndex();
              },
            ),
            SizedBox(height: 30),
            InkWell(
              child: Container(
                width: 100,
                height: 30,
                decoration: buttonStyle,
                child: Center(child: Text('이야기 작성')),
              ),
              onTap: () {
                Get.toNamed(ScreenRoutes().registerSsulScreen);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectButton({name}) {
    return InkWell(
      child: Container(
        decoration: buttonStyle,
        width: 100,
        height: 30,
        child: Center(
            child: Text('${sampleData[ssulController.ssulIndex.value][name]}')),
      ),
      onTap: () {
        ssulController.nextIndex();
      },
    );
  }
}
