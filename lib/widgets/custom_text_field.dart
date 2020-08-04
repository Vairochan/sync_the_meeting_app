import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {

  CustomTextField({
    this.borderRadius: 30,
    this.hint,
    this.obscure: false,
    this.limit,
    @required this.inputType,

  });
  final double borderRadius;
  final String hint;
  final int limit;
  final bool obscure;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height *0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: TextFormField(
          textAlign: TextAlign.start,
          cursorColor: Colors.black,
          style: TextStyle(
              color: Colors.black,
            fontSize: 16
          ),
          keyboardType: inputType,
          obscureText: obscure,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: hint,
            hintStyle: TextStyle(
                color: Colors.grey
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(limit),
          ],
        ),
      ),
    );
  }
}