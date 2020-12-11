import 'package:condotoo/Screens/Login/login_screen.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Condo Test Create',
      theme: ThemeData(
        primaryColor: kThemeColor,
        scaffoldBackgroundColor: kPrimarybackgroundColor,
        accentColor: Color(0xFFFEF9EB), 
        //canvasColor: Colors.transparent, 
        // primarySwatch: Colors.blue,        
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}


