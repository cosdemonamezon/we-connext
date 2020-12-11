import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DetailsContact extends StatefulWidget {
  DetailsContact({Key key}) : super(key: key);

  @override
  _DetailsContactState createState() => _DetailsContactState();
}

class _DetailsContactState extends State<DetailsContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        title: Text("ข้อความ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        actions: <Widget>[
           Row(
             children: <Widget>[
               Icon(Icons.mail_outline, size: 35,),
               Text("|", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
               Icon(Icons.all_out, size: 35,),
             ],
           ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    // child: Icon(Icons.mail_outline),
                    // backgroundColor: Colors.white70,
                    // foregroundColor: Colors.green,
                    backgroundImage: AssetImage("assets/images/contact1.jpg"),
                    radius: 30.0,
                  ),
                  SizedBox(width: 15.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("แจ้งค่าน้ำเดือน 8", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("จาก ห้อง 401/3 คุณแอดมิน"),
                      Text("ถึง นิติบุคคล"),
                      Text("08/08/2020, 18:30"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Divider(height: 2.0, thickness: 5.0,),
              SizedBox(height: 40.0,),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //SizedBox(width: 40.0,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 120,
                          width: 120,
                          //color: Colors.blue,
                          child: Image.asset(
                            "assets/images/qrcos.JPG",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 35.0,),
                      Text(
                        "ขอแจ้งยอดค่าน้ำของเดือน 8 เป็นเงินจำนวน 500 บาท ",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Text(
                        "ท่านสามารถชำระได้ที่ เลขที่บัญชี 11111111111",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Text(
                        "หรือ ชำระผ่านช่องทาง QR Code",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Text("ขอบคุณครับ", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ตอบกลับลูกบ้าน", 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}