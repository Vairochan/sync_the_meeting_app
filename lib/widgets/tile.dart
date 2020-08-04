import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

