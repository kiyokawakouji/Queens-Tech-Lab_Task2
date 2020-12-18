import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Default constructor"),
        ),
        body: ListView(
            children: [
              _menuItem("メニュー1", Icon(Icons.settings)),
              _menuItem("メニュー2", Icon(Icons.map)),
              _menuItem("メニュー3", Icon(Icons.room)),
              _menuItem("メニュー4", Icon(Icons.local_shipping)),
              _menuItem("メニュー5", Icon(Icons.airplanemode_active)),
              _menuItem("メニュー6", Icon(Icons.ac_unit)),
              _menuItem("メニュー6", Icon(Icons.print)),
              _menuItem("メニュー7", Icon(Icons.ac_unit_outlined)),
              _menuItem("メニュー8", Icon(Icons.ac_unit_sharp)),
              _menuItem("メニュー9", Icon(Icons.access_alarm)),
              _menuItem("メニュー10", Icon(Icons.access_alarm_sharp)),
              _menuItem("メニュー11", Icon(Icons.access_time_outlined)),
              _menuItem("メニュー12", Icon(Icons.access_alarm_rounded)),
              _menuItem("メニュー13", Icon(Icons.ac_unit_rounded)),
              _menuItem("メニュー14", Icon(Icons.access_time_sharp)),
              _menuItem("メニュー15", Icon(Icons.accessibility_new)),
            ]
        ),
      ),
    );
  }

  Widget _menuItem(String title, Icon icon) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child:icon,
              ),
              Text(
                title,
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 18.0
                ),
              ),
            ],
          )
      ),
      onTap: () {
        print("onTap called.");
      },
    );
  }
}