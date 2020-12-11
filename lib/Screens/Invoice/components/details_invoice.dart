import 'package:condotoo/Screens/Invoice/components/model_picker.dart';
import 'package:flutter/material.dart';

class DetailsInvoice extends StatefulWidget {
  DetailsInvoice({Key key}) : super(key: key);

  @override
  _DetailsInvoiceState createState() => _DetailsInvoiceState();
}

class _DetailsInvoiceState extends State<DetailsInvoice> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         //centerTitle: true,
        title: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("แจ้งชำระค่าบริการ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            Text("ค่าน้ำ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            // Text("จัดส่งโดย ACHA TECH", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.insert_drive_file, size: 25, color: Colors.purple),
                    Text("|", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Icon(Icons.all_out, size: 25,)
                  ],
                ),
                Text("30/08/2020", style: TextStyle(fontSize: 12)),
                //Text("รอรับ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
        //leading: ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.alarm, size: 40, color: Colors.purple,),
                  SizedBox(width: 10.0,),
                  Text(
                    "กำหนดชำระ 06/09/2020 ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Icon(Icons.receipt, size: 40, color: Colors.purple,),
                  SizedBox(width: 10.0,),
                  Text(
                    "เลขที่ใบแจ้งหน้ ACHA-IV000108 \n งวดที่ 1 ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Icon(Icons.home, size: 40, color: Colors.purple,),
                  SizedBox(width: 10.0,),
                  Text(
                    "ห้อง : 401/3",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Divider(height: 2.0, thickness: 5.0,),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "เลขมิเตอร์ก่อน",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "18456.0",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "เลขมิเตอร์หลัง",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "18556.0",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "ใช้น้ำไปทั้งหมด",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "100.0 หน่วย",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(height: 2.0, thickness: 5.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "ราคาต่อหน่วย",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "5.0 บาท",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "คิดเป็นเงิน",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "500.0 บาท",
                          style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(height: 2.0, thickness: 5.0,),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "อัพโหลดภาพใบเสร็จ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ModelPicker(), //เลือกรูป และ กล้อง
                    ],
                  ),
                ],
              ),
              //SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "สถานะ ：รอชำระ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "แจ้งชำระเงิน 500.0 บาท", 
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.pinkAccent, Colors.purpleAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
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
