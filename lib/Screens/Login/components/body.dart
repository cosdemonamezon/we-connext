import 'package:condotoo/Screens/Home/home_screen.dart';
import 'package:condotoo/Screens/Login/components/background.dart';
import 'package:condotoo/Screens/Register/register_screen.dart';
import 'package:condotoo/components/already_have_account_check.dart';
import 'package:condotoo/components/input_text_field.dart';
import 'package:condotoo/components/password_field.dart';
import 'package:condotoo/components/rounded_button.dart';
import 'package:condotoo/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/flatcondo.svg",
              height: size.height * 0.37,
            ),
            InputTextField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return HomeScreen();}
                  )
                );
              },
            ),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){return RegisterScreen();}
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}








