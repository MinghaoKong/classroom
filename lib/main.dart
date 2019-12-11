
import 'package:classroom/classroom.dart';
import 'package:flutter/material.dart';

BuildContext buildContext;

void main() {
  runApp(new MaterialApp(
    home: new Prepare(),
  ));
  Future.delayed(Duration(seconds: 2),() {
    runApp(new MaterialApp(
      title: "自习室",
//      home: new Classroom(), //仅作调试之后改回
      home: new Homepage(),
    ));
  });
}

class Prepare extends StatelessWidget {  //绘制主界面准备界面
  @override
  Widget build(BuildContext context) {
    buildContext = context;
    return Container(
      color: Colors.white,
      height: 400,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/sdu.jpg')
                      )
                  ),
              )
          ),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  String sno;
  String password;
  TextEditingController _snoTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();
  var _scaffoldUpdateKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "自习室查询",
      routes: {
        "/classroom": (BuildContext context) => Classroom(),
      },
      home: Scaffold(
          key: _scaffoldUpdateKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text("山东大学统一身份认证"),
          ),
          body: Container(
            decoration: BoxDecoration(//这些代码可能会导致程序编写者的非自然性死亡，建议不要取消注释
              image: DecorationImage(
                  image: AssetImage('images/bgleave.png'),
                fit: BoxFit.cover
              ),
            ),
              child: Container(
                margin: EdgeInsets.fromLTRB(24,30,24,24),
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
                          child: TextField(
                            //输入学号
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            controller: _snoTextEditingController,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              labelText: "学号",
                              labelStyle: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                              ),
                              hintText: "请输入学号",
                              hintStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.green,
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
                            child: TextField(//输入密码
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: _passwordTextEditingController,
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                labelText: "密码",
                                labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                ),
                                hintText: "请输入密码",
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  color: Colors.green,
                                ),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: MaterialButton(
                        //登陆按钮
                        textTheme: ButtonTextTheme.normal,
                        onPressed: () {
                          //从服务器获取比对结果，判断是否登陆成功
                          bool isUser = false;
//                        print(_snoTextEditingController.text);
                          if (_passwordTextEditingController.text.length != 0 &&
                              _snoTextEditingController.text.length != 0) {
                            sno = _snoTextEditingController.text;
                            password = _passwordTextEditingController.text;
//                            login(sno, password);
                            if (sno == "201900301053" && password == "kmh") {
                              isUser = true;
                            }
                            if (isUser) {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Classroom();
                                  }),(route) => route == null); //跳转至查询界面
                            } else {
                              SnackBar snakeBar = SnackBar(
                                content: Text("用户名或密码错误"),
                                backgroundColor: Colors.blue,
                                duration: Duration(milliseconds: 1600),
                              );
                              _scaffoldUpdateKey.currentState
                                  .showSnackBar(snakeBar);
                            }
                          } else {
                            SnackBar snakeBar = SnackBar(
                              content: Text("用户名或密码不能为空"),
                              backgroundColor: Colors.blue,
                              duration: Duration(milliseconds: 1600),
                            );
                            _scaffoldUpdateKey.currentState.showSnackBar(snakeBar);
                          }
                        },
                        child: Text(
                          "登录",
                          style: TextStyle(fontSize: 20),
                        ),
                        minWidth: double.infinity,
                        height: 50,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/background.jpg'))),
                        ))
                  ],
                ),

              )
          )
      ),
    );
  }
}