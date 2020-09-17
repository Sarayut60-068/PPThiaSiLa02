import 'package:flutter/material.dart';
import 'package:thaisila02/dvideo.dart';
import 'package:thaisila02/mvideo.dart';
import 'loginPage.dart';
import 'evideo.dart';

class video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'สื่อการสอน VDO',
      home: Scaffold(
        appBar: AppBar(
          title: Text('สื่อการสอนแบบ VDO'),
          backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.purple,
        ),
        body: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => evideo()));
              },
              color: Colors.green,
              child: Text(
                'Easy level',
                style: TextStyle(color: Colors.white),
              ),
            ),

            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mvideo()));
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Medium level',
                style: TextStyle(color: Colors.white),
              ),
            ),

            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dvideo()));
              },
              color: Colors.red,
              child: Text(
                'Difficult level',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
