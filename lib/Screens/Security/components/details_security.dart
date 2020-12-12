import 'package:flutter/material.dart';
import 'package:condotoo/constants.dart';
import 'package:condotoo/Screens/Chat/chat_screen.dart';

class DetailsSecurity extends StatefulWidget {
  DetailsSecurity({Key key}) : super(key: key);

  @override
  _DetailsSecurityState createState() => _DetailsSecurityState();
}

class _DetailsSecurityState extends State<DetailsSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "รักษาความปลอดภัย", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text("ทดสอบ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
          ],
        ),
        actions: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.verified_user, color: Colors.redAccent[700], size: 25,),
                  Text("|", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  Icon(Icons.all_out, color: Colors.redAccent[700], size: 25,)
                ],
              ),
              Text("30/08/2020", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("ชื่อเรื่อง"),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, width: 5.0//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                  hintText: "ทดสอบติดต่อ",
                ),
              ),
              SizedBox(height: 18,),
              Text("วันที่"),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, width: 5.0//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(9),
                  hintText: "30/08/2020",
                ),
              ),
              SizedBox(height: 10.0,),
              Text("รายละเอียด"),
              SizedBox(height: 8,),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
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
              SizedBox(height: 35.0,),
              Text("เลขห้อง"),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("ชื่อผู้เข้ามาติดต่อ"),
                      Text("แอดมิน"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("เบอร์ติดต่อ"),
                        Text("0123456789"),
                      ],
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