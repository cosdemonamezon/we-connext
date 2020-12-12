import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsNews extends StatefulWidget {
  DetailsNews({Key key}) : super(key: key);

  @override
  _DetailsNewsState createState() => _DetailsNewsState();
}

class _DetailsNewsState extends State<DetailsNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("ข่าวสาร", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text("โครงการคอนโดใหม่ทำเลดี", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.description, size: 25,),
                    Text("|", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.all_out, size: 25,),
                  ],
                ),
                Text("30/08/2020", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250.0,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/new_condo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.history, color: Colors.orangeAccent,),
                    SizedBox(width: 10.0,),
                    Text(
                      "30 August 2020 - 31 Desember 2020",
                      style: TextStyle(fontSize: 15, color: kBtn)
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.room, color: Colors.orangeAccent,),
                    SizedBox(width: 10.0,),
                    Text(
                      "Bangkok",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: kBtn)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Divider(height: 2.0, thickness: 5.0,),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.assignment, size: 28, color: Colors.orangeAccent,),
                    SizedBox(width: 10.0,),
                    Text(
                      "รายละเอียด", style: TextStyle(fontSize: 13, color: kBtn),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("โครงการคอนโดใหม่ทำเลเยี่ยม", style: TextStyle(fontSize: 13, color: kBtn)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("ตอบโจทย์ทกไลฟ์สไตล์การใช้งาน", style: TextStyle(fontSize: 13, color: kBtn)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 15.0),
                          child: Text(
                            "สามารถดูรายละเอียดได้ที่ https:www.google.com",
                            style: TextStyle(fontSize: 13, color: kBtn)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("ติดต่อสอบถาม", style: TextStyle(fontSize: 13, color: kBtn)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("เบอร์โทร 0922685443", style: TextStyle(fontSize: 13, color: kBtn)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "หรือแชทผ่านทาง Line Officail Account",
                            style: TextStyle(fontSize: 13, color: kBtn)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("@condonaja", style: TextStyle(fontSize: 13, color: kBtn)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "https://line.me/C/ti/p/%4Dvgh2567B",
                            style: TextStyle(fontSize: 13, color: kBtn)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "*เงื่อนใขเป็นไปตามที่บริษัทกำหนด", style: TextStyle(fontSize: 13, color: kBtn)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}