import 'package:flutter/material.dart';

class C3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('บุคคล ครอบครัว อาชีพ'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: <Widget>[
            Review('ครอบครัว', 'assets/images/potoTSL/c/c01.JPG'),
            Re('พ่อ ', 'assets/images/potoTSL/c/c02.JPG'),
            Review('แม่ ', 'assets/images/potoTSL/c/c03.JPG'),
            Re('ตี่ ', 'assets/images/potoTSL/c/c04.JPG'),
            Review('น้อง', 'assets/images/potoTSL/c/c05.JPG'),
            Re('ปู่', 'assets/images/potoTSL/c/c06.JPG'),
            Review('ย่า ', 'assets/images/potoTSL/c/c07.JPG'),
            Re('ตา ', 'assets/images/potoTSL/c/c08.JPG'),
            Review('ยาย', 'assets/images/potoTSL/c/c09.JPG'),
            Re('ครู', 'assets/images/potoTSL/c/c10.JPG'),
            Review('พยาบาล', 'assets/images/potoTSL/c/c11.JPG'),
            Re('ทหาร', 'assets/images/potoTSL/c/c12.JPG'),
            Review('ตำรวจ', 'assets/images/potoTSL/c/c13.JPG'),
            Re('ชาวนา ', 'assets/images/potoTSL/c/c14.JPG'),
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
            color: Colors.orange,
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
