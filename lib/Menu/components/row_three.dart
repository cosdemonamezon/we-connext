import 'package:condotoo/Screens/Chat/chat_screen.dart';
import 'package:condotoo/Screens/News/news_screen.dart';
import 'package:condotoo/Screens/Security/security_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class Image_RowThree extends StatelessWidget {
  const Image_RowThree({
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
              backgroundImage: AssetImage("assets/images/new1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return NewsScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "ข่าวสาร",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
             CircleAvatar(
              backgroundImage: AssetImage("assets/images/security1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return SecurityScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "รักษาความ \n ปลอดภัย",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
             CircleAvatar(
              backgroundImage: AssetImage("assets/images/talk1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return ChatScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "แชท",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}