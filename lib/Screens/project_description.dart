import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/constants.dart';

class ProjectDescription extends StatefulWidget {
  @override
  _ProjectDescriptionState createState() => _ProjectDescriptionState();
}

class _ProjectDescriptionState extends State<ProjectDescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 35,
                        icon: Icon(Icons.arrow_back),
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Expanded(
                    child: ListTile(
                      title: Text(
                        "Project Discussion with Slack Corporation",
                        style: TextStyle(fontSize: 30),
                      ),
                      subtitle: Text(
                        "Wednesday, January 8, 4:00 PM - 4:30 PM",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                tiles(
                    text: "Join Video Call",
                    text2: "https//:xoom.us.751535453",
                    icon: Icon(Icons.videocam),
                    circleawatar: CircleAvatar(
                      backgroundColor: Colors.transparent,
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                tiles(
                    text: "Notifications",
                    text2: "20 munutes before",
                    icon: Icon(Icons.notifications_none),
                    circleawatar: CircleAvatar(
                      backgroundColor: Colors.transparent,
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepOrange.withOpacity(0.7),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('5 Guest'),
                    subtitle: Text("2 yes, 4 maybe."),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Expanded(
                    child: ListView(
                      children: <Widget>[
                        tiles2(
                            text: "Urmil Sroof",
                            text2: "urmilsherof@gmail.com",
                            text3: "U S",
                            circleawatar2: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.9),
                            )),
                        tiles2(
                            text: "Gopal Nipanr",
                            text2: "gopalf@gmail.com",
                            text3: "G N",
                            circleawatar2: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.9),
                            )),
                        tiles2(
                            text: "Sima Negi",
                            text2: "menasxsl.com",
                            text3: "S N",
                            circleawatar2: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.9),
                            )),
                        tiles2(
                            text: "Manuranjan Sign",
                            text2: "manuranhansing@gmail.com",
                            text3: "M S",
                            circleawatar2: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.9),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  tiles({String text, String text2, Icon icon, CircleAvatar circleawatar}) {
    return Container(
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
            icon,
            Expanded(
              child: ListTile(
                title: Text(text),
                subtitle: Text(text2),
              ),
            ),
            circleawatar
          ],
        ),
      ),
    );
  }

  tiles2(
      {String text, String text2, String text3, CircleAvatar circleawatar2}) {
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
              circleawatar2
            ],
          ),
        ),
      ),
    );
  }
}
