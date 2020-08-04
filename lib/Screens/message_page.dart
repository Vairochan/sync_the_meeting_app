import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/constants.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(

          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xeffF48348),
              onPressed: (){},
            child: Icon(
              Icons.add
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Messages",
                        style: TextStyle(
                            fontSize: 30
                        ),),
                      Icon(Icons.notifications_none,
                        size: 30,)
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      tiles2(
                          text: "Urmil Sroof",
                          text2: "Meeting reschedule",
                          text3: "U S",
                          ),
                      tiles2(
                          text: "Gopal Nipanr",
                          text2: "Meeting reschedule",
                          text3: "G N",
                         ),
                      tiles2(
                          text: "Sima Negi",
                          text2: "Meeting at Bandra",
                          text3: "S N",
                          ),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  tiles2(
      {String text, String text2, String text3, }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(kdark),
                        Color(klight),
                      ]),
                ),
                child: Center(child: Text(text3,
                  style: TextStyle(
                      color: Colors.white
                  ),)),
              ),
              Expanded(
                child: ListTile(
                  title: Text(text),
                  subtitle: Text(text2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
