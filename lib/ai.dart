import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'home.dart';

class ai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'AR',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to AR'),
          backgroundColor: Colors.pinkAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(color: Colors.purple),
      ),
    );
  }
}


