import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {

  final String path;

  final double radius;

  UserAvatar({this.path, this.radius = 100});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: path == null
              ? ClipOval(
                  child: Icon(Icons.account_circle,
                      color: Colors.white, size: radius * 2),
                )
              : CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  backgroundImage: AssetImage(path),
                  radius: radius,
                ),
        ),
      ],
    );
  }
}
