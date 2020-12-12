import 'package:flutter/material.dart';

class TabOne_Details extends StatefulWidget {
  const TabOne_Details({
    Key key,
  }) : super(key: key);

  @override
  _TabOne_DetailsState createState() => _TabOne_DetailsState();
}

class _TabOne_DetailsState extends State<TabOne_Details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Job No.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "ASHA-2002/2020", style: TextStyle(fontSize: 18,)
                ),
              ),
            ],
          ),
        ),
        //SizedBox(height: 15.0,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "ชื่อเรื่อง", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 52.0),
                child: Text(
                  "ทดสอบแจ้งซ่อม 1", style: TextStyle(fontSize: 18,)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("ความสำคัญ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("ประเภทงาน", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("ระบบงาน", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0,),
        Divider(height: 2.0, thickness: 5.0,),
        SizedBox(height: 20.0,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 100,
                //color: Colors.blue,
                child: Image.asset("assets/images/repair2.JPG"),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0,),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("วันนัดหมาย", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 40,
          //color: Colors.blue,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red, width: 5.0//this has no effect
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              hintText: "10/08/2020",
            ),
          ),
        ),
        SizedBox(height: 15.0,),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("รายละเอียด", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        SizedBox(height: 10.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 40,
          //color: Colors.blue,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red, width: 5.0//this has no effect
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              hintText: "ทดสอบ",
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Divider(height: 2.0, thickness: 5.0,),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text("ชื่อผู้มาติดต่อ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text("แอดมิน", style: TextStyle(fontSize: 18,)),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("เบอร์ติดต่อ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text("026884559", style: TextStyle(fontSize: 18,)),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("เลขห้อง", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text("401/8", style: TextStyle(fontSize: 18,)),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Divider(height: 2.0, thickness: 5.0,),
        SizedBox(height: 20.0,),
        Row(
          children: [
            Expanded(
              child: Container(
                child: FlatButton(
                  onPressed: (){},
                  child: Text("มอบหมายงานให้ช่าง", style: TextStyle(fontSize: 18,)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.pinkAccent, Colors.orangeAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
      ],
    );
  }
}