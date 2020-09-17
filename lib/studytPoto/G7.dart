import 'package:flutter/material.dart';

class G7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G7',
      home: Scaffold(
        appBar: AppBar(
          title: Text('จำนวนนับ ตัวเลข'),
          backgroundColor: Colors.greenAccent,
        ),
        body: ListView(
          children: <Widget>[
            Review('หนึ่ง', 'assets/images/potoTSL/g/g01.JPG'),
            Re('สอง', 'assets/images/potoTSL/g/g02.JPG'),
            Review('สาม', 'assets/images/potoTSL/g/g03.JPG'),
            Re('สี่', 'assets/images/potoTSL/g/g04.JPG'),
            Review('ห้า', 'assets/images/potoTSL/g/g05.JPG'),
            Re('หก', 'assets/images/potoTSL/g/g06.JPG'),
            Review('เจ็ด ', 'assets/images/potoTSL/g/g07.JPG'),
            Re('แปด', 'assets/images/potoTSL/g/g08.JPG'),
            Review('เก้า', 'assets/images/potoTSL/g/g09.JPG'),
            Re('สิบ', 'assets/images/potoTSL/g/g10.JPG'),
            Review('ยี่สิบ', 'assets/images/potoTSL/g/g11.JPG'),
            Re('สามสิบ', 'assets/images/potoTSL/g/g12.JPG'),
            Review('สี่สิบ', 'assets/images/potoTSL/g/g13.JPG'),
            Re('ห้าสิบ', 'assets/images/potoTSL/g/g14.JPG'),
            Review('หกสิบ', 'assets/images/potoTSL/g/g15.JPG'),
            Re('เจ็ดสิบ', 'assets/images/potoTSL/g/g16.JPG'),
            Review('แปดสิบ', 'assets/images/potoTSL/g/g17.JPG'),
            Re('เก้าสิบ', 'assets/images/potoTSL/g/g18.JPG'),
            Review('หนึ่งร้อย', 'assets/images/potoTSL/g/g19.JPG'),
            Re('หนึ่งพัน', 'assets/images/potoTSL/g/g20.JPG'),
            Review('หนึ่งหมื่น', 'assets/images/potoTSL/g/g21.JPG'),
            Re('หนึ่งแสน', 'assets/images/potoTSL/g/g22.JPG'),
            Review('หนึ่งล้าน', 'assets/images/potoTSL/g/g23.JPG'),
            Re('สิบห้า', 'assets/images/potoTSL/g/g24.JPG'),
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
            color: Colors.orangeAccent,
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
            color: Colors.blueGrey,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
