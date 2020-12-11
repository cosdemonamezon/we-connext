import 'package:condotoo/Screens/Register/components/register_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900], 
              Colors.yellow[900],
              Colors.orange[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Register", style: TextStyle(color: Colors.white, fontSize: 40.0),),
                  SizedBox(height: 10.0,),
                  Text("Well come to Register page", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Expanded(
              child: Container(
                //height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60), 
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 30.0,),
                        RegisterTextField(), //field ที่กรอกข้อมูลการสมัคร
                        SizedBox(height: 25.0,),
                        Container(
                          height: 50.0,
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[900],
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: (){},
                              child: Text(
                                "Register", 
                                style: TextStyle(
                                  color: Colors.white, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.0,),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Back to login page", 
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
