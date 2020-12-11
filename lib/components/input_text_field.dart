import 'package:condotoo/components/text_field_container.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputTextField({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}