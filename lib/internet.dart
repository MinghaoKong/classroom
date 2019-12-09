import 'dart:convert';
import 'package:classroom/classroom.dart';
import 'package:dio/dio.dart';
Future<List<ClassroomData>> getClassroomData(String place,DateTime time,Wait wait) async {
  String classroom = "http://sduonline.cn/isdu/studyroom/api/?";
  String classroomInterface = classroom +  "building=" +place + "&date=" + time.year.toString() + "-" + time.month.toString() + "-" + time.day.toString(); //进行网络接口响应
  Dio dio = Dio();
  Response response = await dio.get(classroomInterface);
  List classroomJson = JsonDecoder().convert(response.toString());
  List<ClassroomData> classroomsData = List();
  classroomsData = classroomJson.map((e) => ClassroomData.fromJson(e)).toList();//格式化json数据到类classroomDate
  wait.wait = false;
  return classroomsData;
}

class ClassroomData {
  String classroom;
  List status = List(); //是否空闲按照顺序，list中存放早中晚

  ClassroomData.fromJson(Map<String, dynamic> json) {
    classroom = json["classroom"];
    status.add(json["status"]["1"]);
    status.add(json["status"]["2"]);
    status.add(json["status"]["3"]);
    status.add(json["status"]["4"]);
    status.add(json["status"]["5"]);
    status.add(json["status"]["6"]);//格式化json数据
    print(classroom + status.toString());
  }
}


