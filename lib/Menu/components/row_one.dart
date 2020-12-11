import 'package:condotoo/Screens/Invoice/invoice_screen.dart';
import 'package:condotoo/Screens/Publish/publish_screen.dart';
import 'package:condotoo/Screens/Supplies/supplies_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class Image_RowOne extends StatelessWidget {
  const Image_RowOne({
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
              backgroundImage: AssetImage("assets/images/supplies1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return SuppliesScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "พัสดุ",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/invoice1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return InvoiceScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "แจ้งหนี้",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/publish1.png"),
              radius: 32,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){return PublishScreen();}
                    )
                  );
                },
                child: null,
              ),
            ),
            Text(
              "ประกาศ",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}