import 'package:flutter/material.dart';

void main (){
  runApp(new MaterialApp(
    title: "自习室",
    home: Classroom(),
  ));
}

class Classroom extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("自习室查询"),
        ),
        body:
        Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(onPressed: () {//获取校区数据

                  })
                ],
              )
            ],
          ),
        )
    );
  }
}