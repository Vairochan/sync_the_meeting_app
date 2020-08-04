import 'package:flutter/material.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/enter_otp.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/widgets/custom_flat_button.dart';
import 'file:///C:/Users/vairo_drrrnuo/Desktop/IdeaProjects/sync_the_meeting_app/lib/Screens/login/login_page.dart';

class OtpScreen extends StatelessWidget {
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
               Container(
                 width: MediaQuery.of(context).size.width * 0.8,
                 child: Row(
                   children: [
                     Expanded(
                         child: Text(
                           "A One time Password or OTP is sent to your registered email. "
                         "Please click on the link to verify the email and reset the new password.",
                     style: TextStyle(
                       fontSize: 19,
                       color: Colors.grey,
                       fontWeight: FontWeight.w400
                     ),)),
                   ],
                 ),
               ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                CustomFlatbutton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context){
                          return EnterOtp();
                        }
                    ));
                  },
                  text: "Enter OTP.",
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
                  text: "Go to Login.",
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
