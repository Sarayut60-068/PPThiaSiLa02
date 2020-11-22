import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/Fruit.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/Santol.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/apple.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/coconut.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/grape.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/mango.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/soldier.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/utensils.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/D/watermelon.dart';

import '../constants.dart';
import '../loginPage.dart';
import '../study.dart';

class D4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'D4',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ผัก ผลไม้ อาหาร'),
          backgroundColor: Colors.lightBlue,
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
            TitleWithMoreBtn(title: "ผลไม้", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Fruit(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "แอปเปิ้ล", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => apple(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "มะพร้าว", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => coconut(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "องุ่น", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => grape(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "มะม่วง", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => mango(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "กระท้อน", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Santol(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "สับปะรด", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pineapple(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "มะละกอ", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => papaya(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "แตงโม", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => watermelon(),
                ),
              );
            }),



//            Review('กระถิน', 'assets/images/potoTSL/d/d01.JPG'),
//            Re('กระเที่ยม', 'assets/images/potoTSL/d/d02.JPG'),
//            Review('ขมิ้น ', 'assets/images/potoTSL/d/d03.JPG'),
//            Re('ข้าวโพด ', 'assets/images/potoTSL/d/d04.JPG'),
//            Review('สะตอ', 'assets/images/potoTSL/d/d05.JPG'),
//            Re('ลูกเนียง', 'assets/images/potoTSL/d/d06.JPG'),
//            Review('พริกขี้หนู ', 'assets/images/potoTSL/d/d07.JPG'),
//            Re('ฟักทอง ', 'assets/images/potoTSL/d/d08.JPG'),
//            Review('ฟักเขียว', 'assets/images/potoTSL/d/d09.JPG'),
//            Re('ชะอม', 'assets/images/potoTSL/d/d10.JPG'),
//            Review('ตะไคร้', 'assets/images/potoTSL/d/d11.JPG'),
//            Re('แตงกวา', 'assets/images/potoTSL/d/d12.JPG'),
//            Review('ผลไม้', 'assets/images/potoTSL/d/d13.JPG'),
//            Re('กล้วย', 'assets/images/potoTSL/d/d14.JPG'),
//            Review('กระท้อน', 'assets/images/potoTSL/d/d15.JPG'),
//            Re('เงาะ', 'assets/images/potoTSL/d/d16.JPG'),
//            Review('ชมพู่', 'assets/images/potoTSL/d/d17.JPG'),
//            Re('ทุเรียน', 'assets/images/potoTSL/d/d18.JPG'),
//            Review('แตงโม', 'assets/images/potoTSL/d/d19.JPG'),
//            Re('มะพร้าว', 'assets/images/potoTSL/d/d20.JPG'),
//            Review('มะละกอ ', 'assets/images/potoTSL/d/d21.JPG'),
//            Re('มังคุด', 'assets/images/potoTSL/d/d22.JPG'),
//            Review('สับปะรด', 'assets/images/potoTSL/d/d23.JPG'),
//            Re('ฝรั่ง', 'assets/images/potoTSL/d/d24.JPG'),
//            Review('แอปเปิ้ล', 'assets/images/potoTSL/d/d26.JPG'),
//            Re('ลำไย', 'assets/images/potoTSL/d/d27.JPG'),
//            Review('ลางสาด', 'assets/images/potoTSL/d/d28.JPG'),
//            Re('ลิ้นจี่ ', 'assets/images/potoTSL/d/d29.JPG'),
//            Review('ขนุน', 'assets/images/potoTSL/d/d30.JPG'),
//            Re('มะม่วง', 'assets/images/potoTSL/d/d31.JPG'),
//            Review('ลูกตาลโตนด', 'assets/images/potoTSL/d/d32.JPG'),
//            Re('องุ่น', 'assets/images/potoTSL/d/d33.JPG'),
//            Review('ขนมจีน', 'assets/images/potoTSL/d/d34.JPG'),
//            Re('ก๋วยเตี๋ยว', 'assets/images/potoTSL/d/d35.JPG'),
//            Review('แกงไตปลา', 'assets/images/potoTSL/d/d36.JPG'),
//            Re('ข้าวยำ', 'assets/images/potoTSL/d/d37.JPG'),
//            Review('ข้าว ', 'assets/images/potoTSL/d/d38.JPG'),
//            Re('โรตี', 'assets/images/potoTSL/d/d39.JPG'),
//            Review('ปาท่องโก๋', 'assets/images/potoTSL/d/d40.JPG'),
//            Re('น้ำนมถั่วเหลือง', 'assets/images/potoTSL/d/d41.JPG'),
//            Review('ซาลาเปา', 'assets/images/potoTSL/d/d42.JPG'),
//            Re('น้ำปลา', 'assets/images/potoTSL/d/d43.JPG'),
//            Review('กะปิ', 'assets/images/potoTSL/d/d44.JPG'),
//            Re('ไข่', 'assets/images/potoTSL/d/d45.JPG'),
//            Review('ผงชูรส', 'assets/images/potoTSL/d/d46.JPG'),
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
            color: Colors.lightBlue,
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
            color: Colors.lightGreenAccent,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}

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