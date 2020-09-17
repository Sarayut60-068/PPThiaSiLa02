import 'package:flutter/material.dart';

class E5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('วัน เดือน ปี เวลา'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          children: <Widget>[
            Review('วันอาทิตย์', 'assets/images/potoTSL/e/e01.JPG'),
            Re('วันจันทร์', 'assets/images/potoTSL/e/e02.JPG'),
            Review('วันอังคาร', 'assets/images/potoTSL/e/e03.JPG'),
            Re('วันพุธ', 'assets/images/potoTSL/e/e04.JPG'),
            Review('วันพฤหัสบดี', 'assets/images/potoTSL/e/e05.JPG'),
            Re('วันศุกร์', 'assets/images/potoTSL/e/e06.JPG'),
            Review('วันเสาร์ ', 'assets/images/potoTSL/e/e07.JPG'),
            Re('เดือนมกราคม', 'assets/images/potoTSL/e/e08.JPG'),
            Review('เดือนกุมภาพันธ์', 'assets/images/potoTSL/e/e09.JPG'),
            Re('เดือนมีนาคม', 'assets/images/potoTSL/e/e10.JPG'),
            Review('เดือนเมษายน', 'assets/images/potoTSL/e/e11.JPG'),
            Re('เดือนพฤษภาคม', 'assets/images/potoTSL/e/e12.JPG'),
            Review('เดือนมิถุนายน', 'assets/images/potoTSL/e/e13.JPG'),
            Re('เดือนกรกฎาคม', 'assets/images/potoTSL/e/e14.JPG'),
            Review('เดือนสิงหาคม', 'assets/images/potoTSL/e/e15.JPG'),
            Re('เดือนกันยายน', 'assets/images/potoTSL/e/e16.JPG'),
            Review('เดือนตุลาคม', 'assets/images/potoTSL/e/e17.JPG'),
            Re('เดือนพฤศจิกายน', 'assets/images/potoTSL/e/e18.JPG'),
            Review('เดือนธันวาคม', 'assets/images/potoTSL/e/e19.JPG'),
            Re('กลางคืน', 'assets/images/potoTSL/e/e20.JPG'),
            Review('ตอนเช้า', 'assets/images/potoTSL/e/e21.JPG'),
            Re('เที่ยงวัน', 'assets/images/potoTSL/e/e22.JPG'),
            Review('ตอนบ่าย', 'assets/images/potoTSL/e/e23.JPG'),
            Re('ตอนเย็น', 'assets/images/potoTSL/e/e24.JPG'),
            Review('มะรืนนี้', 'assets/images/potoTSL/e/e26.JPG'),
            Re('เมื่อวานนี้', 'assets/images/potoTSL/e/e27.JPG'),
            Review('เมื่อวานซืน', 'assets/images/potoTSL/e/e28.JPG'),
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
            color: Colors.amberAccent,
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
            color: Colors.pinkAccent,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
