import 'package:condotoo/components/text_field_container.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock, 
            color: kPrimaryColor,
          ),
          // suffixIcon: Icon(
          //   Icons.visibility, 
          //   color: kPrimaryColor,
          // ),
          hintText: "Password",
          border: InputBorder.none,
          
        ),
      ),
    );
  }
}