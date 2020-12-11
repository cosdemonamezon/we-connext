import 'package:condotoo/Menu/components/image_menu.dart';
import 'package:condotoo/Menu/menu.dart';
import 'package:condotoo/Screens/Home/components/image_banner.dart';
import 'package:condotoo/Screens/Home/components/image_menu_home.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kThemeColor,
        title: Text("Dashboard"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          image_carousel(),
          SizedBox(height: 2.0,),
          ImageMenuHome(),
        ],
        
      ),
    );
  }
}

                // Card(
                //   child: ListTile(
                //     leading: Icon(
                //       Icons.build,
                //       color: Colors.blueAccent,
                //       size: 50.0
                //     ),
                //     title: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: <Widget>[
                //         Text('ทดสอบแจ้งซ่อม'),
                //         Text('10/08/2020'),
                //       ],
                //     ),
                //     subtitle: Text(
                //       'แจ้งซ่อมห้องน้ำ ชั้น 3 ห้องเบอร์ 308'
                //     ),
                //     //trailing: Icon(Icons.more_vert),
                //     isThreeLine: true,
                //     onTap: (){
                //       Navigator.push(
                //         context, 
                //         MaterialPageRoute(
                //           builder: (context){return DetailsRepair();}
                //         )
                //       );
                //     },
                //   ),
                // ),

