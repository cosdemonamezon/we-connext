import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsBook extends StatefulWidget {
  DetailsBook({Key key}) : super(key: key);

  @override
  _DetailsBookState createState() => _DetailsBookState();
}

class _DetailsBookState extends State<DetailsBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("จองสิ่งอำนวยความสะดวก", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text("ห้องประชุม 1", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.developer_board, size: 30),
                Text("|", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Icon(Icons.all_out, size: 30)
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("วันที่จอง"),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, width: 5.0//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  hintText: "10/08/2020",
                ),
              ),
              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("ตั้งแต่"),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    child: new TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red, width: 5.0//this has no effect
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        isDense: true,
                        hintText: "14:00",
                      ),
                    ),
                  ),
                  Text("ถึง"),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    child: new TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red, width: 5.0//this has no effect
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        isDense: true,
                        hintText: "17:00",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Text("รายละเอียด"),
              SizedBox(height: 10.0,),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, width: 5.0//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(9),
                  hintText: "ทดสอบติดต่อขอเข้าภายในอาคาร",
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("ชื่อผู้มาติดต่อ"),
                      Text("เบอร์โทรติดต่อ"),
                      Text("เลขห้อง"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("แอดมิน"),
                        Text("0256987423"),
                        Text("401/3"),
                      ],
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