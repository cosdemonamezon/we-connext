import 'package:condotoo/Screens/Book/book_screen.dart';
import 'package:condotoo/Screens/Contact/contact_screen.dart';
import 'package:condotoo/Screens/Repair/repair_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class Image_RowTwo extends StatelessWidget {
  const Image_RowTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/repair.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return RepairScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "แจ้งซ่อม",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/contact1.jpg"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return ContackScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "ติดต่อ",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/book1.jpg"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return BookScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "จอง",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}