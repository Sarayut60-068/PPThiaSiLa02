import 'package:flutter/material.dart';

class B2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ของใช้ เครื่องแต่งกาย'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: ListView(
          children: <Widget>[
            Review('ของใช้', 'assets/images/potoTSL/b/b01.JPG'),
            Re('จวัก ', 'assets/images/potoTSL/b/b02.JPG'),
            Review('ทัพพี ', 'assets/images/potoTSL/b/b03.JPG'),
            Re('ตะหลิว ', 'assets/images/potoTSL/b/b04.JPG'),
            Review('แก้ว ', 'assets/images/potoTSL/b/b05.JPG'),
            Re('จาน ', 'assets/images/potoTSL/b/b06.JPG'),
            Review('เก้าอี้ ', 'assets/images/potoTSL/b/b07.JPG'),
            Re('โทรทัศน์ ', 'assets/images/potoTSL/b/b08.JPG'),
            Review('คอมพิวเตอร์ ', 'assets/images/potoTSL/b/b09.JPG'),
            Re('โทรศัพท์ ', 'assets/images/potoTSL/b/b10.JPG'),
            Review('ยาสีฟัน ', 'assets/images/potoTSL/b/b11.JPG'),
            Re('สบู่ ', 'assets/images/potoTSL/b/b12.JPG'),
            Review('แชมพูสระผม', 'assets/images/potoTSL/b/b13.JPG'),
            Re('ผ้าขาวม้า ', 'assets/images/potoTSL/b/b14.JPG'),
            Review('หวี', 'assets/images/potoTSL/b/b15.JPG'),
            Re('ถุงเท้า ', 'assets/images/potoTSL/b/b16.JPG'),
            Review('รองเท้า ', 'assets/images/potoTSL/b/b17.JPG'),
            Re('เข็มขัด ', 'assets/images/potoTSL/b/b18.JPG'),
            Review('กางเกงขาสั้น ', 'assets/images/potoTSL/b/b19.JPG'),
            Re('เสื้อยืด', 'assets/images/potoTSL/b/b20.JPG'),
            Review('กระโปรง ', 'assets/images/potoTSL/b/b21.JPG'),
            Re('ผ้าถุง', 'assets/images/potoTSL/b/b22.JPG'),
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
            color: Colors.red,
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
            color: Colors.green,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
