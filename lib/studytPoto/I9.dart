import 'package:flutter/material.dart';

class I9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I9',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ุณลักษณะทั่วไป'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView(
          children: <Widget>[
            Review('สวัสดี', 'assets/images/potoTSL/i/i01.JPG'),
            Re('ขอบคุณ', 'assets/images/potoTSL/i/i02.JPG'),
            Review('ขอโทษ', 'assets/images/potoTSL/i/i03.JPG'),
            Re('เป็นห่วง', 'assets/images/potoTSL/i/i04.JPG'),
            Review('ขยัน', 'assets/images/potoTSL/i/i05.JPG'),
            Re('ประหยัด', 'assets/images/potoTSL/i/i06.JPG'),
            Review('ซื่อสัตย์', 'assets/images/potoTSL/i/i07.JPG'),
            Re('มีวินัย', 'assets/images/potoTSL/i/i08.JPG'),
            Review('สุภาพ', 'assets/images/potoTSL/i/i09.JPG'),
            Re('สามัคคี', 'assets/images/potoTSL/i/i10.JPG'),
            Review('มีน้ำใจ', 'assets/images/potoTSL/i/i11.JPG'),
            Re('ดูแล', 'assets/images/potoTSL/i/i12.JPG'),
            Review('ร่าเริงแจ่มใส', 'assets/images/potoTSL/i/i13.JPG'),
            Re('ตื่นนอน', 'assets/images/potoTSL/i/i14.JPG'),
            Review('เข้านอน', 'assets/images/potoTSL/i/i15.JPG'),
            Re('ล้างหน้า', 'assets/images/potoTSL/i/i16.JPG'),
            Review('แปรงฟัน', 'assets/images/potoTSL/i/i17.JPG'),
            Re('อาบน้ำ', 'assets/images/potoTSL/i/i18.JPG'),
            Review('ถูสบู่', 'assets/images/potoTSL/i/i19.JPG'),
            Re('สระผม', 'assets/images/potoTSL/i/i20.JPG'),
            Review('แต่งตัว', 'assets/images/potoTSL/i/i21.JPG'),
            Re('อุจจาระ', 'assets/images/potoTSL/i/i22.JPG'),
            Review('ปัสสาวะ', 'assets/images/potoTSL/i/i23.JPG'),
            Re('ล้างมือ', 'assets/images/potoTSL/i/i24.JPG'),
            Review('ป้องกัน', 'assets/images/potoTSL/i/i25.JPG'),
            Re('ทำอาหาร', 'assets/images/potoTSL/i/i26.JPG'),
            Review('รับประทาน', 'assets/images/potoTSL/i/i27.JPG'),
            Re('ล้างจาน', 'assets/images/potoTSL/i/i28.JPG'),
            Review('กวาดบ้าน', 'assets/images/potoTSL/i/i29.JPG'),
            Re('ซักผ้า', 'assets/images/potoTSL/i/i30.JPG'),
            Review('รดน้ำต้นไม้', 'assets/images/potoTSL/i/i31.JPG'),
            Re('ออกกำลังกาย', 'assets/images/potoTSL/i/i32.JPG'),
            Review('งดบุหรี่', 'assets/images/potoTSL/i/i33.JPG'),
            Re('งดสุรา', 'assets/images/potoTSL/i/i34.JPG'),
            Review('งดสารเสพติด', 'assets/images/potoTSL/i/i35.JPG'),
            Re('งดการพนัน', 'assets/images/potoTSL/i/i36.JPG'),
            Review('ไม่ประมาท', 'assets/images/potoTSL/i/i37.JPG'),
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
            color: Colors.teal,
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
            color: Colors.deepPurple,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
