import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/April.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/August.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/December.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/February.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Friday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/January.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/July.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/June.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/March.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/May.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Monday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/November.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/October.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Saturday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/September.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Sunday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Thursday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Tuesday.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/E/Wednesday.dart';

import '../constants.dart';
import '../loginPage.dart';
import '../study.dart';

class E5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('วัน เดือน ปี เวลา'),
          backgroundColor: Colors.lightBlueAccent,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => study()));
                })
          ],
        ),
        body: ListView(
          children: <Widget>[

            TitleWithMoreBtn(title: "วันอาทิตย์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sunday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันจันทร์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Monday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันอังคาร", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Tuesday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันพุธ", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Wednesday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันพฤหัสบดี", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Thursday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันศุกร์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Friday(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วันเสาร์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Saturday(),
                ),
              );
            }),

            TitleWithMoreBtn(title: "เดือนมกราคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => January(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนกุมภาพันธ์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => February(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนมีนาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => March(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนเมษายน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => April(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนพฤษภาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => May(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนมิถุนายน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => June(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนกรกฎาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => July(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนสิงหาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => August(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนกันยายน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => September(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนตุลาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => October(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนพฤศจิกายน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => November(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เดือนธันวาคม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => December(),
                ),
              );
            }),


//            Review('วันอาทิตย์', 'assets/images/potoTSL/e/e01.JPG'),
//            Re('วันจันทร์', 'assets/images/potoTSL/e/e02.JPG'),
//            Review('วันอังคาร', 'assets/images/potoTSL/e/e03.JPG'),
//            Re('วันพุธ', 'assets/images/potoTSL/e/e04.JPG'),
//            Review('วันพฤหัสบดี', 'assets/images/potoTSL/e/e05.JPG'),
//            Re('วันศุกร์', 'assets/images/potoTSL/e/e06.JPG'),
//            Review('วันเสาร์ ', 'assets/images/potoTSL/e/e07.JPG'),
//            Re('เดือนมกราคม', 'assets/images/potoTSL/e/e08.JPG'),
//            Review('เดือนกุมภาพันธ์', 'assets/images/potoTSL/e/e09.JPG'),
//            Re('เดือนมีนาคม', 'assets/images/potoTSL/e/e10.JPG'),
//            Review('เดือนเมษายน', 'assets/images/potoTSL/e/e11.JPG'),
//            Re('เดือนพฤษภาคม', 'assets/images/potoTSL/e/e12.JPG'),
//            Review('เดือนมิถุนายน', 'assets/images/potoTSL/e/e13.JPG'),
//            Re('เดือนกรกฎาคม', 'assets/images/potoTSL/e/e14.JPG'),
//            Review('เดือนสิงหาคม', 'assets/images/potoTSL/e/e15.JPG'),
//            Re('เดือนกันยายน', 'assets/images/potoTSL/e/e16.JPG'),
//            Review('เดือนตุลาคม', 'assets/images/potoTSL/e/e17.JPG'),
//            Re('เดือนพฤศจิกายน', 'assets/images/potoTSL/e/e18.JPG'),
//            Review('เดือนธันวาคม', 'assets/images/potoTSL/e/e19.JPG'),
//            Re('กลางคืน', 'assets/images/potoTSL/e/e20.JPG'),
//            Review('ตอนเช้า', 'assets/images/potoTSL/e/e21.JPG'),
//            Re('เที่ยงวัน', 'assets/images/potoTSL/e/e22.JPG'),
//            Review('ตอนบ่าย', 'assets/images/potoTSL/e/e23.JPG'),
//            Re('ตอนเย็น', 'assets/images/potoTSL/e/e24.JPG'),
//            Review('มะรืนนี้', 'assets/images/potoTSL/e/e26.JPG'),
//            Re('เมื่อวานนี้', 'assets/images/potoTSL/e/e27.JPG'),
//            Review('เมื่อวานซืน', 'assets/images/potoTSL/e/e28.JPG'),
          ],
        ),
      ),
    );
  }
}

//class Review extends StatelessWidget {
//  final String _text;
//  final String _imageUrl;
//
//  const Review(
//    this._text,
//    this._imageUrl, {
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      margin: EdgeInsets.all(15),
//      //กำหนดขนาดขอบ
//      child: Column(
//        children: <Widget>[
//          Container(
//            height: 250,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(10), //กำหนดขอบมน
//              image: DecorationImage(
//                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
//                  ),
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8),
//            child: Text(
//              '"$_text" ',
//              style: TextStyle(
//                fontSize: 18,
//              ),
//            ),
//          ),
//          Container(
//            color: Colors.amberAccent,
//            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
//            padding: const EdgeInsets.all(8.0),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class Re extends StatelessWidget {
//  final String _text;
//  final String _imageUrl;
//
//  const Re(
//    this._text,
//    this._imageUrl, {
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      margin: EdgeInsets.all(15),
//      //กำหนดขนาดขอบ
//      child: Column(
//        children: <Widget>[
//          Container(
//            height: 250,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(10), //กำหนดขอบมน
//              image: DecorationImage(
//                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
//                  ),
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8),
//            child: Text(
//              '"$_text" ',
//              style: TextStyle(
//                fontSize: 18,
//              ),
//            ),
//          ),
//          Container(
//            color: Colors.pinkAccent,
//            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
//            padding: const EdgeInsets.all(8.0),
//          ),
//        ],
//      ),
//    );
//  }
//}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}