import 'package:condotoo/Screens/Book/components/details_book.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  BookScreen({Key key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         //centerTitle: true,
        backgroundColor: kThemeColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "จองสิ่งอำนวยความสะดวก", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
             Text("2 รายการ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.developer_board),
                Text("|"),
                Icon(Icons.all_out)
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
                    leading: Icon(Icons.developer_board, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ห้องประชุม 1", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Text(
                      "30/08/2020 17.30",
                      style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: kBtn)
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsBook();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.developer_board, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "ลู่วิ่ง 2", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    subtitle: Text(
                      "30/08/2020 17.30",
                      style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: kBtn)
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsBook();}
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