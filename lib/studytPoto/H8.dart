import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/chicken.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/crab.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/duck.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/frog.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/shrimp.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/snake.dart';

import '../constants.dart';
import '../loginPage.dart';
import '../study.dart';

class H8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('สัตว์'),
          backgroundColor: Colors.yellow,
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

            TitleWithMoreBtn(title: "ไก่", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => chicken(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "ปู", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => crab(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เป็ด", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => duck(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "กบ", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => frog(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "กุ้ง", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => shrimp(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "งู", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => snake(),
                ),
              );
            }),

//            Review('สัตว์', 'assets/images/potoTSL/h/h01.JPG'),
//            Re('แมว', 'assets/images/potoTSL/h/h02.JPG'),
//            Review('ควาย', 'assets/images/potoTSL/h/h03.JPG'),
//            Re('วัว', 'assets/images/potoTSL/h/h04.JPG'),
//            Review('ช้าง', 'assets/images/potoTSL/h/h05.JPG'),
//            Re('ม้า', 'assets/images/potoTSL/h/h06.JPG'),
//            Review('เสือ', 'assets/images/potoTSL/h/h07.JPG'),
//            Re('ลิง', 'assets/images/potoTSL/h/h08.JPG'),
//            Review('หนู', 'assets/images/potoTSL/h/h09.JPG'),
//            Re('นก', 'assets/images/potoTSL/h/h10.JPG'),
//            Review('กระต่าย', 'assets/images/potoTSL/h/h11.JPG'),
//            Re('ไก่', 'assets/images/potoTSL/h/h12.JPG'),
//            Review('เป็ด', 'assets/images/potoTSL/h/h13.JPG'),
//            Re('กบ', 'assets/images/potoTSL/h/h14.JPG'),
//            Review('งู', 'assets/images/potoTSL/h/h15.JPG'),
//            Re('ยุง', 'assets/images/potoTSL/h/h16.JPG'),
//            Review('แมลงสาบ', 'assets/images/potoTSL/h/h17.JPG'),
//            Re('แมลงวัน', 'assets/images/potoTSL/h/h18.JPG'),
//            Review('กุ้ง', 'assets/images/potoTSL/h/h19.JPG'),
//            Re('ปู', 'assets/images/potoTSL/h/h20.JPG'),
//            Review('หอย', 'assets/images/potoTSL/h/h21.JPG'),
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
//            color: Colors.lightGreenAccent,
//            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
//            padding: const EdgeInsets.all(8.0),
//          ),
//        ],
//      ),
//    );
//  }
//}

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
//            color: Colors.yellowAccent,
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