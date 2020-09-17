import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/A1.dart';
import 'package:thaisila02/studytPoto/B2.dart';
import 'package:thaisila02/studytPoto/C3.dart';
import 'package:thaisila02/studytPoto/D4.dart';
import 'package:thaisila02/studytPoto/E5.dart';
import 'package:thaisila02/studytPoto/F6.dart';
import 'package:thaisila02/studytPoto/G7.dart';
import 'package:thaisila02/studytPoto/H8.dart';
import 'package:thaisila02/studytPoto/I9.dart';
import 'package:thaisila02/studytPoto/J10.dart';
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => A1()));
                      },
                      color: Colors.purple,
                      child: Text(
                        'สัญลักลักษณ์แทนการเคลื่อนไหว',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => B2()));
                      },
                      color: Colors.blue,
                      child: Text(
                        'เครือ่งใช้ เครื่องแต่งกาย',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => C3()));
                      },
                      color: Colors.lightBlueAccent,
                      child: Text(
                        'บุคลากร ครอบครัว อาชีพ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => D4()));
                      },
                      color: Colors.green,
                      child: Text(
                        'ผัก ผลไม้ อาหาร',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => E5()));
                      },
                      color: Colors.yellow,
                      child: Text(
                        'วัน เดือน ปี เวลา',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => F6()));
                      },
                      color: Colors.orange,
                      child: Text(
                        'สถานที่ จังหวัด',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => G7()));
                      },
                      color: Colors.red,
                      child: Text(
                        'จำนวนนับ ตัวเลข',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => H8()));
                      },
                      color: Colors.pinkAccent,
                      child: Text(
                        'สัตว์',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => I9()));
                      },
                      color: Colors.purpleAccent,
                      child: Text(
                        'คุณลักษณะทั่วไป',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => J10()));
                      },
                      color: Colors.deepPurple,
                      child: Text(
                        'เบ็ตเตล็ด',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
