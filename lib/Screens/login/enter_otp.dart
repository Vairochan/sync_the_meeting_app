import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/main_homePage.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/login_page.dart';
import 'package:sync_the_meeting_app/widgets/custom_flat_button.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/widgets/custom_text_field.dart';
import 'package:sync_the_meeting_app/widgets/custom_raised_button.dart';

class EnterOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset("images/Logo.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  hint: "Enter OTP",
                  obscure: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                TabButton(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (
                  BuildContext context
                  ){
                    return MainHomePage();
                  }));
                  },
                    text: "Verify OTP"
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                CustomFlatbutton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context){
                          return Login();
                        }
                    ));
                    },
                  text: "Already have an account",
                  fontWeight: FontWeight.bold,
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
