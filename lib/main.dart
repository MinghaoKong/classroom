import 'package:flutter/material.dart';

void main () => runApp(new Homepage());

class Homepage extends StatelessWidget { //绘制主界面以及登陆界面
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title: "welcome to flutter",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("what's it"),
        ),
        body: new Center(
          child: new Text("hello world"),
        ),
      ),
    );
  }
}