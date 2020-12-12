import 'dart:ui';
import 'package:condotoo/Screens/Chat/chat_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsSupplies extends StatefulWidget {
  DetailsSupplies({Key key}) : super(key: key);

  @override
  _DetailsSuppliesState createState() => _DetailsSuppliesState();
}

class _DetailsSuppliesState extends State<DetailsSupplies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         //centerTitle: true,
        title: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("พัสดุ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            Text("000100-2020", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
            Text("จัดส่งโดย ACHA TECH", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.assessment, size: 22,),
                    Text("|", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.all_out, size: 22,)
                  ],
                ),
                Text("30/08/2020", style: TextStyle(fontSize: 12)),
                Text("รอรับ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
        //leading: ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 170.0,
                        width: 140.0,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/mphone1.JPG"))
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Text(
                        "รหัสรับพัสดุ", 
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kBtn),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        "000100-2020",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kBtn)
                      ),
                      SizedBox(height: 35.0,),
                      RaisedButton(
                        child: Text(
                          "แจ้งรับพัสดุ", 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        elevation: 30.0,
                        color: Colors.orange,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/supplies1.png"),
                        radius: 30.0,
                      ),
                      SizedBox(height: 10.0,),
                      Text("สถานะ : รอรับ", style: TextStyle(color: kBtn),),
                      SizedBox(height: 10.0,),
                      Text("รายละเอียด :", style: TextStyle(color: kBtn),),
                      SizedBox(height: 10.0,),
                      RaisedButton(
                        color: Colors.orangeAccent,
                        elevation: 11.0,
                        child: Text("กดดูขั้นตอนการรับพัสดุ", style: TextStyle(color: kPrimaryLightColor),),
                        onPressed: (){},
                      ),
                    ],
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