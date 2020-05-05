import 'package:flutter/material.dart';
import 'package:timeapp/Components/Body.dart';

class App extends StatelessWidget {
  App({this.title = ''});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Body(),
    );
  }
}
