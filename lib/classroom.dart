import 'package:classroom/campusChoice.dart';
import 'package:classroom/teachAreaChoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(new MaterialApp(
    routes: {
      "/classroom":(BuildContext context) =>Classroom()
    },
    title: "自习室",
    home: Classroom(),
  ));
}
String campusValue = "中心";
String campusValueBack = campusValue;
String teachAreaValue = "";

class Classroom extends StatefulWidget {
  @override
  State createState() {
    return ClassroomState();
  }
}

class ClassroomState extends State<Classroom> {
  String campus; //校区
  String area; //位置
  DateTime time; //时间
  bool wait; //是否显示等待图标

  @override
  void initState() {
    super.initState();

    campus = campusValueBack;
    area = teachAreaValue;
    time = DateTime.now();
    wait = true;

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("自习室"),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                child: _topItem(campus, area, time, context),//显示头部选项选择校区时间
              ),
              Divider(
                height: 3,
              ),
              Expanded(
                  child: Stack(
                    children: <Widget>[
                      Offstage( //未获取网络数据前显示
                        offstage: !wait,
                        child: Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Offstage( //获取网络数据后显示自习室表格
                        offstage: wait,
                        child: Container(
                          child: Text("hello"),
                        ),
                      )
                    ],
                  )
              ),
                  ],
                ),
              ),
          ),
        );
  }

  Row _topItem(String campus,String area,DateTime time,BuildContext buildContext) { //选择校区，教学区，时间

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: MaterialButton( //选择校区
              textTheme: ButtonTextTheme.normal,
              child: Text(
                "校区",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
              onPressed: () {
//                Overlay.of(buildContext).insert(_floatList(buildContext, null, campus));
              showDialog(
                  context: buildContext,
                  builder: (context) {
                    return StatefulBuilder(builder: (context,states) {
                      return CampusChoiceDialog();
                    });
                  }
              ).then((onValue){
                setState(() {
                  campusValue = onValue;
                });
              });

              }),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: MaterialButton( //选择教学区
              child: Text(
                "教学区",
                style: TextStyle(
                    fontSize: 18,color: Colors.white
                ),
              ),
              onPressed: () {
                print(campusValue);
                print(campusValueBack);
                showDialog(
                    context: buildContext,
                    builder: (context) {
                      return StatefulBuilder(builder: (context,states) {
                        if (campusValue != null) {
                          switch (campusValue) {
                            case "中心":
                              campusValueBack = campusValue;//保存成功选择的数据避免下一次错误的选择
                              campus = campusValue; //将校区地址赋给地址
                              return TeachAreaZhongXinChoice();
                            case "洪楼":
                              campusValueBack = campusValue;
                              campus = campusValue;
                              return TeachAreaHongLouChoice();
                            case "趵突泉":
                              campusValueBack = campusValue;
                              campus = campusValue;
                              return TeachAreaBaoTuChoice();
                            case "软件园":
                              campusValueBack = campusValue;
                              campus = campusValue;
                              return TeachAreaRuanJianChoice();
                            case "兴隆山":
                              campusValueBack = campusValue;
                              campus = campusValue;
                              return TeachAreaXingLongChoice();
                            case "千佛山" :
                              campusValueBack = campusValue;
                              campus = campusValue;
                              return TeachAreaQianFoChoice();
                            default :
                              return TeachAreaZhongXinChoice();
                          }
                        } else{
                          switch (campusValueBack) {
                            case "中心":
                              campus = campusValueBack;
                              return TeachAreaZhongXinChoice();
                            case "洪楼":
                              campus = campusValueBack;
                              return TeachAreaHongLouChoice();
                            case "趵突泉":
                              campus = campusValueBack;
                              return TeachAreaBaoTuChoice();
                            case "软件园":
                              campus = campusValueBack;
                              return TeachAreaRuanJianChoice();
                            case "兴隆山":
                              campus = campusValueBack;
                              return TeachAreaXingLongChoice();
                            case "千佛山" :
                              campus = campusValueBack;
                              return TeachAreaQianFoChoice();
                            default :
                              return TeachAreaZhongXinChoice();
                          }
                        }
                      });
                    }
                ).then((onValue) {
                  setState(() {
                    teachAreaValue = onValue;
                  });
                });
              }),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: MaterialButton( //日期按钮
              child: Text(
                "日期",
                style: TextStyle(
                    fontSize: 18,color: Colors.white
                ),
              ),
              onPressed: () {
                _getTime(buildContext);
              }),
        )
      ],
    );
  }

  void _getTime(BuildContext buildContext) async{
    DateTime dateTime = await showDatePicker(context: buildContext, initialDate: time, firstDate: new DateTime(2019,9), lastDate: DateTime(2021,2,1));
    if (dateTime != null) {
      setState(() {
        time = dateTime;
      });
    }
  }

}