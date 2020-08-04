import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/project_description.dart';
import 'package:sync_the_meeting_app/constants.dart';

class ContactDetail extends StatefulWidget {
  @override
  _ContactDetailState createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
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
                      Text(
                        "Calendar",
                        style: TextStyle(fontSize: 30),
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(kdark),
                                      Color(klight),
                                    ],
                                  ),
                                ),
                                child: Center(child: Text("U S",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                                ),)),
                              ),
                              Center(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Urmil Shroff",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Text("Mumbai, India",
                                          style: TextStyle(fontSize: 18)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(Icons.calendar_today,
                                size: 35,),
                                Text("Schedule"),
                                Text("Meeting"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.call,size: 35,),
                                Text("Call"),
                                Text(""),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.chat_bubble_outline,size: 35,),
                                Text("Chat"),
                                Text(""),
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 2,
                ),
                Container(
                  child: Expanded(
                    child: ListView(
                      children: [
                        tile(),
                        tile(),
                        tile(),
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

  tile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ProjectDescription();
          }));
        },
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "May",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text("24", style: TextStyle(fontSize: 30))
                  ],
                ),
                Expanded(
                  child: ListTile(
                    title: Text("Meeting with Urmil"),
                    subtitle: Text(" 2pm - 3pm @ Zoom Meeting "),
                  ),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    size: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
