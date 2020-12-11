import 'package:condotoo/Screens/Contact/components/details_contact.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class ContackScreen extends StatefulWidget {
  ContackScreen({Key key}) : super(key: key);

  @override
  _ContackScreenState createState() => _ContackScreenState();
}

class _ContackScreenState extends State<ContackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: kThemeColor,
         title: Text("ติดต่อสอบถาม", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
         
       ),
       body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.mail_outline, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "แจ้งค่าน้ำเดือน 8", 
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
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
                          "ขอแจ้งยอดค่าน้ำเดือน 8", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "รอตอบกลับ", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsContact();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.mail_outline, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "แจ้งค่าไฟเดือน 8", 
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
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
                          "ขอแจ้งยอดค่าไฟเดือน 8", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "รอตอบกลับ", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsContact();}
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
    );
  }
}