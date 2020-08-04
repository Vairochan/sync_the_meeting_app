import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/login/login_page.dart';
import 'package:sync_the_meeting_app/constants.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(kdark),
                Color(klight),
              ],
            )
        ),

        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Center(
                child: Image.asset("images/Logo.png",
                  color: Colors.white,)
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Login();
          }));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height *0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.transparent),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      )
          ],
        )


      ),


    );
  }
}