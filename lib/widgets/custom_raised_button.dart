import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/constants.dart';

class TabButton extends StatelessWidget {
  TabButton({
    this.borderRadius: 30,
    @required this.onTap,
    @required this.text,
  });
  final double borderRadius;
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height *0.08,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(kdark),
              Color(klight)
            ],
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.transparent),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20,

              color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}