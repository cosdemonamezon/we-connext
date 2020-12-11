import 'package:condotoo/Menu/components/row_one.dart';
import 'package:condotoo/Menu/components/row_three.dart';
import 'package:condotoo/Menu/components/row_two.dart';
import 'package:flutter/material.dart';

class ImageMenu extends StatelessWidget {
  const ImageMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 3.0,
            children: <Widget>[            
                Image_RowOne(),
                SizedBox(height: 10),
                Image_RowTwo(),
                SizedBox(height: 10),
                Image_RowThree(),
            ],
          ),
        ),
      ],
    );
  }
}





