import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/District.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/Hospital.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/Postoffice.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/homehome.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/measure.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/F/school.dart';

import '../constants.dart';
import '../loginPage.dart';
import '../study.dart';

class F6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('สถานที่ จังหวัด'),
          backgroundColor: Colors.green,
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
            TitleWithMoreBtn(title: "ที่ว่าการอำเภอ", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => District(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "บ้าน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homehome(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "โรงพยาบาล", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Hospital(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "วัด", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => measure(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "ที่ทำการไปรษณีย์", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Postoffice(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "โรงเรียน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => school(),
                ),
              );
            }),
//            Review('จังหวัด', 'assets/images/potoTSL/f/f01.JPG'),
//            Re('กรุงเทพมหานคร', 'assets/images/potoTSL/f/f02.JPG'),
//            Review('ภาคใต้', 'assets/images/potoTSL/f/f03.JPG'),
//            Re('ชุมพร', 'assets/images/potoTSL/f/f04.JPG'),
//            Review('ระนอง', 'assets/images/potoTSL/f/f05.JPG'),
//            Re('สุราษฎร์ธานี', 'assets/images/potoTSL/f/f06.JPG'),
//            Review('พังงา ', 'assets/images/potoTSL/f/f07.JPG'),
//            Re('ภูเก็ต', 'assets/images/potoTSL/f/f08.JPG'),
//            Review('กระบี่', 'assets/images/potoTSL/f/f09.JPG'),
//            Re('นครศรีธรรมราช', 'assets/images/potoTSL/f/f10.JPG'),
//            Review('ตรัง', 'assets/images/potoTSL/f/f11.JPG'),
//            Re('พัทลุง', 'assets/images/potoTSL/f/f12.JPG'),
//            Review('สงขลา', 'assets/images/potoTSL/f/f13.JPG'),
//            Re('สตูล', 'assets/images/potoTSL/f/f14.JPG'),
//            Review('ปัตตานี', 'assets/images/potoTSL/f/f15.JPG'),
//            Re('ยะลา', 'assets/images/potoTSL/f/f16.JPG'),
//            Review('นราธิวาส', 'assets/images/potoTSL/f/f17.JPG'),
//            Re('ที่ทำการไปรษณีย์', 'assets/images/potoTSL/f/f18.JPG'),
//            Review('ที่ว่าการอำเภอ', 'assets/images/potoTSL/f/f19.JPG'),
//            Re('โรงพยาบาล', 'assets/images/potoTSL/f/f20.JPG'),
//            Review('ธนาคารกรุงเทพ', 'assets/images/potoTSL/f/f21.JPG'),
//            Re('โรงเรียน', 'assets/images/potoTSL/f/f22.JPG'),
//            Review('วัด', 'assets/images/potoTSL/f/f23.JPG'),
//            Re('ตลาด', 'assets/images/potoTSL/f/f24.JPG'),
//            Review('บ้าน', 'assets/images/potoTSL/f/f25.JPG'),
//            Re('ห้องน้ำ', 'assets/images/potoTSL/f/f26.JPG'),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  final String _text;
  final String _imageUrl;

  const Review(
    this._text,
    this._imageUrl, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      //กำหนดขนาดขอบ
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), //กำหนดขอบมน
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '"$_text" ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            color: Colors.tealAccent,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}

class Re extends StatelessWidget {
  final String _text;
  final String _imageUrl;

  const Re(
    this._text,
    this._imageUrl, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      //กำหนดขนาดขอบ
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), //กำหนดขอบมน
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '"$_text" ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}