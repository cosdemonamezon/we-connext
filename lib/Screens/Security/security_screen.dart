import 'package:condotoo/Screens/Security/components/details_security.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  SecurityScreen({Key key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
        title: Text(
          "รักษาความปลอดภัย", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.verified_user, size: 25.0,),
                Text("|", style: TextStyle(fontSize: 25,)),
                Icon(Icons.all_out, size: 30.0,)
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.verified_user, color: Colors.redAccent[700], size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ทดสอบติดต่อครั้งที่ 10", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.redAccent[700]),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Text(
                      "วันที่นัดหมาย 30/08/2020 17.30",
                      style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsSecurity();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.verified_user, color: Colors.redAccent[700], size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ทดสอบติดต่อครั้งที่ 11", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.redAccent[700]),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Text(
                      "วันที่นัดหมาย 30/08/2020 17.30",
                      style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsSecurity();}
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