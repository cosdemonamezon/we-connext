import 'package:condotoo/Screens/Repair/components/details_repair.dart';
import 'package:flutter/material.dart';

class RepairScreen extends StatefulWidget {
  RepairScreen({Key key}) : super(key: key);

  @override
  _RepairScreenState createState() => _RepairScreenState();
}

class _RepairScreenState extends State<RepairScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("แจ้งซ่อม"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.build), 
            onPressed: (){},
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
                    leading: Icon(Icons.developer_board, color: Colors.blueAccent, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ทดสอบแจ้งซ่อม 1", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.redAccent[700]),
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
                          "ทดสอบ",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                        ),
                        Text(
                          "ขอปิดงาน",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsRepair();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.developer_board, color: Colors.blueAccent, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ทดสอบแจ้งซ่อม 2", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.redAccent[700]),
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
                          "ทดสอบ",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                        ),
                        Text(
                          "ขอปิดงาน",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.redAccent[700])
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsRepair();}
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