import 'package:condotoo/Screens/Supplies/components/details_supplies.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';
import 'package:condotoo/Screens/Chat/chat_screen.dart';

class SuppliesScreen extends StatefulWidget {
  SuppliesScreen({Key key}) : super(key: key);

  @override
  _SuppliesScreenState createState() => _SuppliesScreenState();
}

class _SuppliesScreenState extends State<SuppliesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text("พัสดุ"),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.card_giftcard, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "000100-2020", 
                          style: TextStyle(fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "กล่องเก็บของขนาดกลาง", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "รอรับ", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsSupplies();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.card_giftcard, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "000101-2020", 
                          style: TextStyle(fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "กล่องโทรศัพท์", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "รอรับ", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsSupplies();}
                        )
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
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