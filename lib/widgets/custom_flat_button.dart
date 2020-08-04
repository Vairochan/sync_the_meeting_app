import 'package:flutter/material.dart';

class CustomFlatbutton extends StatelessWidget {
  CustomFlatbutton({
    @required this.onTap,
    @required this.text,
    this.letterspacing,
    this.fontWeight = FontWeight.w400,
  });
  final VoidCallback onTap;
  final String text;
  final double letterspacing;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Text(text,
      style: TextStyle(
        letterSpacing: letterspacing,
        fontWeight: fontWeight,
        fontSize: 17
      ),),
    );
  }
}