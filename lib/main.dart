import 'dart:io';

import 'package:classroom/classroom.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(new MaterialApp(
    home: new Prepare(),
  ));
  sleep(Duration(milliseconds: 100));
  runApp(new MaterialApp(
    title: "自习室",
    home: new Homepage(),
  ));

}

class Prepare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(

      child: Column(
        children: <Widget>[
          Container(
            decoration:BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/sdu.jpg')
                )
            ),
          )
        ],
      ),
    );
  }
}

class Homepage extends StatelessWidget { //绘制主界面准备界面
  String sno;
  String password;
  TextEditingController _snoTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();
  var _scaffoldUpdateKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "自习室查询",
      routes: {
        "Classroom" : (BuildContext context)  => Classroom(),
      },
      home: Scaffold(
        key: _scaffoldUpdateKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text("山东大学统一身份认证"),
          ),
          body:
          Container(
            margin: EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
//                    Text(
//                      "学号",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
                    Expanded(
                        child: TextField( //输入学号
                          controller: _snoTextEditingController,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            labelText:"学号",
                            labelStyle: TextStyle(
                              fontSize: 24,
                            ),
                            hintText:"请输入学号",
                            hintStyle: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                    )
                  ],
                ),

                Row(
                  children: <Widget>[

//                    Text(
//                      "密码",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
                    Expanded(
                        child:TextField( //输入密码
                          controller: _passwordTextEditingController,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            labelText:"密码",
                            labelStyle: TextStyle(
                              fontSize: 24,
                            ),
                            hintText:"请输入密码",
                            hintStyle: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Container(
                 margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child:MaterialButton( //登陆按钮
                      textTheme: ButtonTextTheme.normal,
                      onPressed: () { //从服务器获取比对结果，判断是否登陆成功
                        bool isUser = false;
//                        print(_snoTextEditingController.text);
                        if (_passwordTextEditingController.text.length != 0 && _snoTextEditingController.text.length != 0) {
                          sno=_snoTextEditingController.text;
                          password=_passwordTextEditingController.text;
                          if (sno == "201900301053" && password == "kmh") {
                            Navigator.of(context).pushNamed("Classroom");//跳转至查询界面
                          }
                        } else {
                         SnackBar snakeBar = SnackBar(content: Text("用户名或密码不能为空"),
                          backgroundColor: Colors.blue,
                           duration: Duration(milliseconds: 1600),
                          );
                          _scaffoldUpdateKey.currentState.showSnackBar(snakeBar);
                        }
                      },
                      child: Text(
                        "登录",
                        style: TextStyle(
                            fontSize: 24
                        ),),
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.lightBlue,
                    )
                )
              ],
            ),
          )
      ),
    );
    }
}
