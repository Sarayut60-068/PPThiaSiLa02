import 'package:flutter/material.dart';

import 'loginPage.dart';
import 'home.dart';


class study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Study',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Stady'),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new Container(
                      child: new Image.asset('assets/images/1.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/2.jpg'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/3.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/4.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/5.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/6.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/7.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/8.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/9.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/10.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/11.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/12.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/13.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/14.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/15.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/16.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/17.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/18.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/19.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/20.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/21.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/22.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/23.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/24.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/25.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/26.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/27.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/28.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/29.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/30.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/31.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/32.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/33.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/34.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/35.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/36.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/37.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/38.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/39.JPG'),
                    ),
                    new Container(
                      child: new Image.asset('assets/images/40.JPG'),
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


