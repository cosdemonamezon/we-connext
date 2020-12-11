import 'package:condotoo/Screens/IOT/design.dart';
import 'package:flutter/material.dart';

class IotScreen extends StatefulWidget {
  IotScreen({Key key}) : super(key: key);

  @override
  _IotScreenState createState() => _IotScreenState();
}

class _IotScreenState extends State<IotScreen> {
  bool door = false;

  @override
  void initState() {
    // TODO: implement initState
    //_openDoor();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // animationController.dispose() instead of your controller.dispose 
  }

  _openDoor(){
    initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Smart Home"),
      ),
      backgroundColor: Color(0xFFe6ebf2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top + 10,
            ),
            Text(
              "MyHome",
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: "nunito",
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          door = true;
                        });
                        _openDoor();
                      },
                      child: Design(
                        height1: 100,
                        width1: 100,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 3.0,
                        iconData: Icons.lock_open,
                        iconSize: 70.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          door = false;
                        });
                        _openDoor();
                      },
                      child: Design(
                        height1: 100,
                        width1: 100,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 3.0,
                        iconData: Icons.lock,
                        iconSize: 70.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFe6ebf2),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-3, -3),
                    blurRadius: 3.0,
                    color: Colors.white.withOpacity(.7)
                  ),
                  BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(.15)
                  ),
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe6ebf2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-2, -2),
                            blurRadius: 2.0,
                            color: Colors.black.withOpacity(.3),
                          ),
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 2.0,
                            color: Colors.white.withOpacity(.7)
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFe6ebf2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFDCE7F1),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(-2, -2),
                                    blurRadius: 2.0,
                                    color: Colors.black.withOpacity(.3)
                                  ),
                                  BoxShadow(
                                    offset: Offset(2, 2),
                                    blurRadius: 2.0,
                                    color: Colors.white.withOpacity(.7)
                                  ),
                                ]
                              ),
                              child: door == true ?
                              Icon(
                                Icons.lock_open_outlined, size: 80.0,
                              ) :
                               Icon(
                                Icons.lock_outline, size: 80.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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