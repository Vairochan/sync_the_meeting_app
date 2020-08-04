import 'package:flutter/material.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/create_account.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/widgets/custom_flat_button.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/widgets/custom_raised_button.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/widgets/custom_text_field.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/forgot_password.dart';
import 'package:sync_the_meeting_app/Screens/main_homePage.dart';

class Login extends StatelessWidget {
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
                TabButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (
                  BuildContext context
                  ){
                    return MainHomePage();
                  }));
                }, text: "Login"),
                CustomFlatbutton(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context){
                              return ForgotPassword();
                            }
                        )
                    );
                  },
                  text: "Forgot Password?",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFlatbutton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (
                        BuildContext context
                        ){
                      return CreateNewAccount();
                    }));
                  },
                  text: "Create an new account",
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
