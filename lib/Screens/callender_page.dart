import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/project_description.dart';
import 'package:sync_the_meeting_app/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class Callender extends StatefulWidget {
  @override
  _CallenderState createState() => _CallenderState();
}

class _CallenderState extends State<Callender> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = CalendarController();
  }
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
                      Text("Calendar",
                        style: TextStyle(
                            fontSize: 30
                        ),),
                      Icon(Icons.notifications_none,
                        size: 30,)
                    ],
                  ),
                ),
                Container(
                  child: TableCalendar(
                    calendarController: _controller,
                    calendarStyle: CalendarStyle(
                      todayColor: Color(0xeffEF5A53),
                      selectedColor: Color(0xeffF48348),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                    ),
                    builders: CalendarBuilders(
                      selectedDayBuilder: (context, date, event) =>
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(kdark),
                                  Color(klight),
                                ]
                              ),
                            ),
                            child: Text(date.day.toString(),
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                      todayDayBuilder: (context, date, event) =>
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xeffEF5A53).withOpacity(0.7),
                                    Color(0xeffF48348).withOpacity(0.7),
                                  ]
                              ),
                            ),
                            child: Text(date.day.toString(),
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                          ),
                    ),
                  ),
                ),
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
  tile(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return ProjectDescription();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10)
          ),
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
                    Text("May",
                      style: TextStyle(
                          fontSize: 15
                      ),),
                    Text("24",
                        style: TextStyle(
                            fontSize: 30
                        ))
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
                  child: Icon(Icons.menu,
                    size: 15,
                    color: Colors.grey,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

