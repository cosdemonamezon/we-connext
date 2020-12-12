import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class ModelPicker extends StatelessWidget {
  const ModelPicker({
    Key key,
  }) : super(key: key);

   _showModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: kPrimarybackgroundColor,
          height: 200.0,
          // width: 300.0,
          // alignment: Alignment.center,
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(20),
          //     topRight: Radius.circular(20),
          //   ),
          // ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0,),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("ถ่ายรูป"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.pinkAccent, Colors.purpleAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),              
                
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("อับโหลดรูป"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.blueAccent, Colors.blue[300]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),               
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _showModalBottomSheet(context);
      },
      child: Container(
        width: 160.0,
        height: 160.0,
        //color: kPrimarybackgroundColor,
        child: Image(
          image: AssetImage("assets/images/578375a.jpg"),
        ),
      ),
    );
  }
}