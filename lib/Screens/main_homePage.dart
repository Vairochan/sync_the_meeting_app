import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sync_the_meeting_app/Screens/add.dart';
import 'package:sync_the_meeting_app/Screens/callender_page.dart';
import 'package:sync_the_meeting_app/Screens/contacts.dart';
import 'package:sync_the_meeting_app/Screens/message_page.dart';
import 'package:sync_the_meeting_app/Screens/profile_page.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  PageController pageController;

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  final tabs = [
    Callender(),
    Messages(),
    Add(),
    Contacts(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.date_range,
            ),
          ),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.chat_bubble_outline,
              )),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.add,
              )),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.people_outline,
              )),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.person_outline,
              )),
        ],
        currentIndex: pageIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xeffF48348),
        unselectedItemColor: Colors.black,
      ),
      body: tabs[pageIndex]
    );
  }
}
