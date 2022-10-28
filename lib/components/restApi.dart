import 'package:dio/dio.dart';

var url = 'http://127.0.0.1:8000/';

var dio = Dio();
Future postData({data}) async {
  final response = await dio.post(url + 'ssul/register/', data: data);
  print(response);
}
