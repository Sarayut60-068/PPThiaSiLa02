import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'home.dart';

class heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Heart',
      home: Scaffold(
        appBar: AppBar(
            title: Text('Welcome to Heart'),
            backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.purple,
        ),
        body: Container(color: Colors.pinkAccent),
      ),
    );
  }
}
