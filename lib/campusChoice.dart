import 'package:flutter/material.dart';

String campusValue = "中心";

class CampusChoiceDialog extends StatefulWidget { //单选类
  @override
  State<StatefulWidget> createState() {
    return CampusChoiceDialogState();
  }
}

class CampusChoiceDialogState extends State<CampusChoiceDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      title: Text("选择校区"),
      children: <Widget>[
        RadioListTile(
            title: Text("中心"),
            value: "中心", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("洪楼"),
            value: "洪楼", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("趵突泉"),
            value: "趵突泉", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("软件园"),
            value: "软件园", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("兴隆山"),
            value: "兴隆山", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        }),
        RadioListTile(
            title: Text("千佛山"),
            value: "千佛山", groupValue: campusValue, onChanged: (String value) {
          setState(() {
            campusValue = value;
          });
          Navigator.pop(context,value);
        })
      ],
    );
  }
}
