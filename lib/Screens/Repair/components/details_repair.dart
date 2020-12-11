import 'package:condotoo/Screens/Repair/components/tab_one_details.dart';
import 'package:condotoo/Screens/Repair/components/tab_tow_details.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsRepair extends StatefulWidget {
  DetailsRepair({Key key}) : super(key: key);

  @override
  _DetailsRepairState createState() => _DetailsRepairState();
}

class _DetailsRepairState extends State<DetailsRepair> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kThemeColor,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("แจ้งซ่อม", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text("ทดสอบแจ้งซ่อม 1", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.build, size: 22,),
                      Text("|", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Icon(Icons.all_out, size: 22,)
                    ],
                  ),
                  Text("20/08/2020", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("ขอปิดงาน", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.purple,
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.description),
                    Text("รายละเอียด"),
                  ],
                ),
                //text: "ราบละเอียด",
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.explore),
                    Text("สถานะ"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers
        ),
      ),
    );
  }
  
  List<Widget> containers = [
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //color: Colors.white,
          child: TabOne_Details(),          
        ),
      ),
    ),
    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          //width: MediaQuery.of(context).size.width - 10.0, 
          //Double size = MediaQuery.of(context).size.height;     
          child: TabTow_Details(),

        ),
      ),
    ),
  ];
}




