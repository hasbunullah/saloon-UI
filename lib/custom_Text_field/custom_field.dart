import 'package:flutter/material.dart';

class custom_Text_field extends StatelessWidget {
   custom_Text_field({Key? key, required this.icon,required this.hint, this.icon2 }) : super(key: key);

  dynamic icon;
   dynamic icon2;
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Color(0XFFF3F3F3),
        filled: true,
        prefixIcon: Icon(
          icon,
          color: Color(0XFF08401a),
        ),
        suffix: Icon(icon2),
        hintText: hint,
        hintStyle: TextStyle(color: Color(0XFF08401a)),
      ),
    );
  }
}
