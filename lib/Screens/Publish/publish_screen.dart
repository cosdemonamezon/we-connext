import 'package:condotoo/Screens/Publish/components/details_publish.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class PublishScreen extends StatefulWidget {
  PublishScreen({Key key}) : super(key: key);

  @override
  _PublishScreenState createState() => _PublishScreenState();
}

class _PublishScreenState extends State<PublishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("ประกาศ"),
         actions: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.record_voice_over, size: 30,),
           )
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
                    leading: Icon(Icons.settings_remote, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "แจ้งฉีดกำจัดยุง", 
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
                          "แจ้งฉีดควันไล่ยุงทุกตึก ทุกชั้นของอาคาร", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsPublish();}
                        )
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.settings_remote, color: Colors.orange, size: 35,),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[                        
                        Text(
                          "การซ้อมอพยบหนีไฟ", 
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
                          "นิติบุคคลทำการซ้อมอพยบหนีไฟ", 
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){return DetailsPublish();}
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