import 'package:flutter/material.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/opt_screen.dart';
import 'package:sync_the_meeting_app/widgets/custom_flat_button.dart';
import 'package:sync_the_meeting_app/widgets/custom_raised_button.dart';
import 'package:sync_the_meeting_app/widgets/custom_text_field.dart';

class CreateNewAccount extends StatelessWidget {
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
                  inputType: TextInputType.emailAddress,
                  hint: "Email Address",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                CustomTextField(
                  hint: "Password",
                  obscure: true,
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                CustomTextField(
                  hint: "Confirm Password",
                  obscure: true,
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                TabButton(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return OtpScreen();
                  }));
                }, text: "Register"),
                CustomFlatbutton(
                  onTap: (){},
                  text: "You agree to all terms and conditions.",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFlatbutton(
                  onTap: (){
                    Navigator.pop(context);
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
