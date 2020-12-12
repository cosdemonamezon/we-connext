import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class DirectoryScreen extends StatefulWidget {
  DirectoryScreen({Key key}) : super(key: key);

  @override
  _DirectoryScreenState createState() => _DirectoryScreenState();
}

class _DirectoryScreenState extends State<DirectoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ไดเรกทรอรี่"),
        actions: [
          Icon(Icons.all_out, size: 35,)
        ],
      ),
      body: Column(
        children: [
          Divider(height: 2.0, thickness: 5.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "สถานที่", 
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kBtn),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "สถานีตำรวจบางใหญ่",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "โรงพยาบาลสัตว์",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "โรงพยาบาลบางเขน",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50.0,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "โทร",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kBtn)
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "0985678442",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "0965842319",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "0975863214",
                        style: TextStyle(fontSize: 16, color: kBtn),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}