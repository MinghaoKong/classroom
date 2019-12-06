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

class Classroom extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    DateTime time = DateTime.now(); //选择时间
    String campus = "ruanjian"; //选择校区
    String area = "first"; //教学区域
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("自习室查询"),
        ),
        body:
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                child: _topItem(campus,area,time,buildContext), //选择,校区，教学区，时间
              ),
              Divider(
                height: 1,
                color: Colors.blue,
              )
            ],
          ),
        )
    );
  }
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
                  fontSize: 22,
                  color: Colors.white
              ),
            ),
            onPressed: () {
              Overlay.of(buildContext).insert(_floatList(buildContext, null, campus));

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
                  fontSize: 22,color: Colors.white
              ),
            ),
            onPressed: () {
              _floatList(buildContext, null, area);
            }),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: MaterialButton(
            child: Text(
              "日期",
              style: TextStyle(
                  fontSize: 22,color: Colors.white
              ),
            ),
            onPressed: () {
              _getTime(buildContext,time);
            }),
      )
    ],
  );
}

void _getTime(BuildContext buildContext,DateTime time) async{
  DateTime dateTime = await showDatePicker(context: buildContext, initialDate: DateTime.now(), firstDate: new DateTime(2019,9), lastDate: DateTime(2021,2,1));
  if (dateTime != null) {
    time = dateTime;
  }
}

OverlayEntry _floatList(BuildContext context,List<String> list,String input){//接受上下文，列表数据，以及获取的数据为参数
  return OverlayEntry(builder: (context) {
    return Positioned(
      width: 200,
        child: CompositedTransformFollower(
          offset: Offset(0.0,50),
          link: LayerLink(),
          child: Material(
            child: Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("校区"),
                  )
                ],
              ),
            )
          ),
        )
    );
  });
}