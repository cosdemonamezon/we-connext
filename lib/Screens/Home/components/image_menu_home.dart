import 'package:condotoo/Screens/Book/book_screen.dart';
import 'package:condotoo/Screens/Chat/chat_screen.dart';
import 'package:condotoo/Screens/Contact/contact_screen.dart';
import 'package:condotoo/Screens/IOT/iot_screen.dart';
import 'package:condotoo/Screens/Invoice/invoice_screen.dart';
import 'package:condotoo/Screens/News/news_screen.dart';
import 'package:condotoo/Screens/Publish/publish_screen.dart';
import 'package:condotoo/Screens/Repair/repair_screen.dart';
import 'package:condotoo/Screens/Security/security_screen.dart';
import 'package:condotoo/Screens/Supplies/supplies_screen.dart';
import 'package:flutter/material.dart';
import 'package:condotoo/constants.dart';

class ImageMenuHome extends StatelessWidget {
  const ImageMenuHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius =32;
    double vertical = 10.0;
    double kfontSize = 16.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 3.0,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: vertical),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/supplies1.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return SuppliesScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "พัสดุ", 
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/invoice1.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return InvoiceScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "แจ้งหนี้",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/publish1.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return PublishScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "ประกาศ",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: vertical),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/repair.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return RepairScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "แจ้งซ่อม",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/contact1.jpg"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return ContackScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "ติดต่อ",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/book1.jpg"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return BookScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "จอง",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: vertical),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/new1.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return NewsScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "ข่าวสาร",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/security1.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return SecurityScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "รักษาความ \n ปลอดภัย",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/smart.png"),
                            radius: radius,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context){return IotScreen();})
                                );
                              },
                            ),
                          ),
                          Text(
                            "สมาร์ทโฮม",
                            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/talk1.png"),
                          radius: radius,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context){return ChatScreen();})
                              );
                            },
                          ),
                        ),
                        Text(
                          "แชท",
                          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: kfontSize),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}