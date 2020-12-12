import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';
import 'package:condotoo/Screens/Chat/chat_screen.dart';

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
      floatingActionButton: FloatingActionButton(
        elevation: 11.0,
        highlightElevation: 11.0,
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: (){},
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/talk1.png"),
          radius: 50,
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context){return ChatScreen();})
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackground,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        elevation: 11.0,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text('แจ้งเตือน'),
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notification_important)
            ),
          ),
          BottomNavigationBarItem(
            title: Text('อีเมล'),
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.email_sharp),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('โทรศัพท์'),
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.phone),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('ช่วยเหลือ'),
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.help),
            ),
          ),
        ],
      ),
    );
  }
}