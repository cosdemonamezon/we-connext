import 'package:condotoo/Screens/News/components/details_news.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        //centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("ข่าวสาร", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text("2 รายการ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.description, size: 30, color: Colors.white,),
              Text("|", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Icon(Icons.all_out, size: 30, color: Colors.white,)
            ],
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
                    leading: Icon(Icons.description, color: Colors.orangeAccent, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "โครงการคอนโดใหม่ \n ทำเลดี", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsNews();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.description, color: Colors.orangeAccent, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "โครงการรถไฟฟ้า BTS", 
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: kBtn),
                        ),
                        Text(
                          "30/08/2020", 
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsNews();}
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