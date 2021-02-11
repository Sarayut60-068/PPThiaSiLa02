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
//                      child: new Image.asset('assets/images/001.jpg'),
                       child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F001.jpg?alt=media&token=fc17058a-d535-40a0-9e40-f79c479ebe74"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F002.jpg?alt=media&token=f2151860-ccfd-4154-97f6-5dd4ccab8064"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F003.jpg?alt=media&token=66e713f1-a47d-4e4f-8e7f-edf49537dc6a"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F004.jpg?alt=media&token=025470e7-a0aa-44a3-8641-2f8a50afda9e"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F005.jpg?alt=media&token=b79f300d-5f25-4146-a778-af498c9785b9"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F006.jpg?alt=media&token=eb7d36f1-1147-4950-ad57-1126caf023cf"),
                    ),
                    new Container(
                      child: new Image.network("https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fa%2F007.jpg?alt=media&token=e67126e2-29f8-4e56-a79a-4a9b4cacf275"),
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

