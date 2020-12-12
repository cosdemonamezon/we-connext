import 'package:condotoo/Menu/components/image_menu.dart';
import 'package:condotoo/Screens/Directory/directory_screen.dart';
import 'package:condotoo/Screens/Home/home_screen.dart';
import 'package:condotoo/Screens/Login/login_screen.dart';
import 'package:condotoo/Screens/Repair/repair_screen.dart';
import 'package:condotoo/Screens/Restaurant/restaurant_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              //arrowColor: Colors.orangeAccent,
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 1.0,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/ppp.png"),
                ),
              ),
              // currentAccountPicture: CircleAvatar(
              //   backgroundImage: AssetImage('assets/images/person1.jpg'),
              // ),
              // accountEmail: Text("condo@condo.com"),
              // accountName: Text("condoText Text123456"),
              otherAccountsPictures: <Widget>[
                IconButton(
                  icon: Icon(Icons.mode_edit), 
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 10),            
            //ImageMenu(), //menu ทีเป็นรูปไอคอน
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 1.0, thickness: 3.0, color: Colors.black54),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.home, size: 35.0, color: kThemeColor),
              title: Text(
                "หน้าหลัก", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              //selected: ModalRoute.of(context).settings.name == '/' ? true : false,
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return HomeScreen();}
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over, size: 35.0, color: kThemeColor),
              title: Text(
                "สร้างประกาศใหม่", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.build, size: 35.0, color: kThemeColor),
              title: Text(
                "แจ้งงานซ่อม", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return RepairScreen();}
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.description, size: 35.0, color: kThemeColor),
              title: Text(
                "เพิ่มวัสดุ", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.folder_open, size: 35.0, color: kThemeColor),
              title: Text(
                "ไดเรกทอรี", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return DirectoryScreen();}
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood, size: 35.0, color: kThemeColor),
              title: Text(
                "ร้านอาหาร", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return RestaurantScreen();}
                  )
                );
              },
            ),
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 2.0, thickness: 3.0, color: Colors.black54,),
            ),

            ListTile(
              leading: Icon(Icons.settings_applications, size: 35.0, color: kThemeColor),
              title: Text(
                "ตั้งค่าระบบ", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.power, size: 35.0, color: kThemeColor),
              title: Text(
                "ออกจากระบบ", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                  fontSize: 18.0,
                  color: kBtn
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return LoginScreen();}
                  )
                );
              },
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
            //   child: Container(
            //     child: SvgPicture.asset("assets/icons/asha1.svg")
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

