import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  Section({this.title = '', this.value = ''});

  final String title;
  final String value;

//  final void onEditClick;

  @override
  Widget build(BuildContext context) =>
//      Padding(
//        padding:
//        child:
      Container(
        margin:  EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
