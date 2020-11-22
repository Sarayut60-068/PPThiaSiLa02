import 'package:flutter/material.dart';
import 'package:thaisila02/study.dart';

class A1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('สัญลักษณ์แทนการเคลื่อนไหว'),
          backgroundColor: Colors.purple,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => study()));
              })
          ],
        ),

        body: Center(
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                     new Container(
                      child: new Image.asset('assets/images/001.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/002.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/003.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/004.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/005.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/006.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/007.jpg'),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

