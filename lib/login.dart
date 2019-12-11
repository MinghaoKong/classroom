///鉴于我从后端偷了一个垃圾接口这部分就不写了

import 'package:dio/dio.dart';

Future<bool> login (String username,String password) async {
  bool state = false;
 state = await getResponse(username,password);
 return state;
}

Future<bool> getResponse(String username,String password) async {
  Dio dio = Dio();
  Response response = await dio.get("http://106.15.192.117:8080/canteen/login?userName=" + username +"&password=" + "帅");
  print(response.toString());
  return true;
}