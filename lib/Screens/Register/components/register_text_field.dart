import 'package:flutter/material.dart';

class RegisterTextField extends StatefulWidget {
  const RegisterTextField({
    Key key,
  }) : super(key: key);

  @override
  _RegisterTextFieldState createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(255, 95, 27, .3),
          blurRadius: 20,
          offset: Offset(0, 10),
        )],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email Address",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Firstname",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Lastname",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Tel :",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}