import 'package:flutter/material.dart';

String areaValue = "";

class TeachAreaZhongXinChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaZhongXinChoiceState();
  }
}

class TeachAreaZhongXinChoiceState extends State<TeachAreaZhongXinChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("公教楼"),
            value: "公教楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("文史楼"),
            value: "文史楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("理综楼"),
            value: "理综楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("电教北楼"),
            value: "电教北楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("知新楼B座"),
            value: "知新楼B座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("董明珠楼"),
            value: "董明珠楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        })
      ],
    );
  }
}

class TeachAreaHongLouChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaHongLouChoiceState();
  }
}

class TeachAreaHongLouChoiceState extends State<TeachAreaHongLouChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("法学新楼"),
            value: "法学新楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("3号楼"),
            value: "3号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("6号楼"),
            value: "6号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("公教楼"),
            value: "公教楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("物理楼"),
            value: "物理楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
      ],
    );
  }
}
class TeachAreaBaoTuChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaBaoTuChoiceState();
  }
}

class TeachAreaBaoTuChoiceState extends State<TeachAreaBaoTuChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("2号楼"),
            value: "2号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("8号楼"),
            value: "8号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("9号楼"),
            value: "9号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("图东"),
            value: "图东", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("图西"),
            value: "图西", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
      ],
    );
  }
}

class TeachAreaRuanJianChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaRuanJianChoiceState();
  }
}

class TeachAreaRuanJianChoiceState extends State<TeachAreaRuanJianChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("1区"),
            value: "1区", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("4区"),
            value: "4区", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("5区"),
            value: "5区", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
      ],
    );
  }
}

class TeachAreaXingLongChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaXingLongChoiceState();
  }
}

class TeachAreaXingLongChoiceState extends State<TeachAreaXingLongChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("群楼A座"),
            value: "群楼A座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("群楼B座"),
            value: "群楼B座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("群楼C座"),
            value: "群楼C座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("群楼D座"),
            value: "群楼D座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("群楼E座"),
            value: "群楼E座", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("讲学堂"),
            value: "讲学堂", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        })
      ],
    );
  }
}
class TeachAreaQianFoChoice extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return TeachAreaQianFoChoiceState();
  }
}

class TeachAreaQianFoChoiceState extends State<TeachAreaQianFoChoice> {
  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择教学区"),
      children: <Widget>[
        RadioListTile(
            title: Text("1号楼"),
            value: "1号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("5号楼"),
            value: "5号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("9号楼"),
            value: "9号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("10号楼"),
            value: "10号楼", groupValue: areaValue, onChanged: (String value) {
          setState(() {
            areaValue = value;
          });
          Navigator.pop(context,value);
        }),
      ],
    );
  }
}