import 'dart:convert';

import 'package:classroom/classroom.dart';
import 'package:dio/dio.dart';
Future<List<ClassroomDate>> getClassroomData(String place,DateTime time,bool wait) async {
  String classroom = "http://sduonline.cn/isdu/studyroom/api/?";
  String classroomInterface = classroom +  "building=" +place + "&date=" + time.year.toString() + "-" + time.month.toString() + "-" + time.day.toString(); //进行网络接口响应
  Dio dio = Dio();
  Response response = await dio.get(classroomInterface);
  print(response.toString());
  List classroomJson = JsonDecoder().convert(response.toString());
  List classroomsDates = classroomJson.map((e) => ClassroomDate.fromJson(e)).toList();//格式化json数据到类classroomDate
  wait = false;
  return classroomsDates;
}

class ClassroomDate {
  String classroom;
  List status = List(); //是否空闲按照顺序，list中存放早中晚

  ClassroomDate.fromJson(Map<String, dynamic> json) {
    classroom = json["classroom"];
    status.add(json["status"]["1"]);
    status.add(json["status"]["2"]);
    status.add(json["status"]["3"]);
    status.add(json["status"]["4"]);
    status.add(json["status"]["5"]);
    status.add(json["status"]["6"]);//格式化json数据
  }

}


