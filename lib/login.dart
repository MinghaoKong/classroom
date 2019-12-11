import 'dart:convert';
import 'package:dio/dio.dart';

Future<bool> login (String username,String password) async {
  bool state = false;
 state = await getResponse(username,password);
 return state;
}

Future<bool> getResponse(String username,String password) async {
  Dio dio = Dio();
  Response response = await dio.get("http://106.15.192.117:8080/canteen/login?userId=" + username +"&password=" + password);
  Map<String,dynamic> value = JsonDecoder().convert(response.toString());
  print(response.toString());
  print(value["code"]);
  if (value["code"] == 0) {
    return true;
  } else {
    return false;
  }
}