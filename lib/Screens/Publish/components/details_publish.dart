import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsPublish extends StatefulWidget {
  DetailsPublish({Key key}) : super(key: key);

  @override
  _DetailsPublishState createState() => _DetailsPublishState();
}

class _DetailsPublishState extends State<DetailsPublish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ประกาศ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              "การซ้อมอพยบหนีไฟ",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.record_voice_over, size: 30,),
                    Text("|"),
                    Icon(Icons.all_out, size: 30,),
                  ],
                ),
                Text("30/8/2020", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.alarm_on, size: 40, color: Colors.orange,),
                  SizedBox(width: 10.0),
                  Text(
                    "15 สิงหาคม 2563 - 18 สิงหาคม 2563", 
                    style: TextStyle(fontWeight: FontWeight.bold, color: kBtn),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.room, size: 40, color: Colors.orange,),
                  SizedBox(width: 10.0),
                  Text(
                    "ลานอเนกประสงค์ ข้างที่จอดรถ", style: TextStyle(fontWeight: FontWeight.bold, color: kBtn),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Divider(height: 2.0, thickness: 5.0,),
              SizedBox(height: 15.0,),
              Row(
                children: <Widget>[
                  Icon(Icons.assignment, size: 40, color: Colors.orange,),
                  SizedBox(width: 10.0),
                  Text("รายละเอียด", style: TextStyle(fontWeight: FontWeight.bold, color: kBtn)),
                ],
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,),
                child: Row(
                  children: <Widget>[
                    Text(
                      "นิติบุคคลจะทำการซ้อมอพยบหนีไฟในวันจันทร์",
                      style: TextStyle(fontWeight: FontWeight.bold, color: kBtn)
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,),
                child: Row(
                  children: <Widget>[
                    Text("ที่ 14 สิงหาคม 2563", style: TextStyle(fontWeight: FontWeight.bold, color: kBtn)),
                  ],
                ),
              ),
              SizedBox(height: 45.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("แก้ใขประกาศ", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.pinkAccent, Colors.orangeAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}