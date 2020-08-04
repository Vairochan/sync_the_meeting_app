import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/login/home_page.dart';
import 'package:sync_the_meeting_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context){
              return MyHomePage();
            }
        ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(kdark),
              Color(klight),
            ],
          )
        ),

        child: Center(
            child: Image.asset("images/Logo.png",
            color: Colors.white,)
        ),

    );
  }
}
