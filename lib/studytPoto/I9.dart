import 'package:flutter/material.dart';

import '../study.dart';

class I9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I9',
      home: Scaffold(
        appBar: AppBar(
          title: Text('คุณลักษณะทั่วไป'),
          backgroundColor: Colors.deepOrangeAccent,
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
            Review('สวัสดี', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi01.JPG?alt=media&token=fc695848-f92e-4b4b-b7ff-fa4011e6d230'),
            Re('ขอบคุณ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi02.JPG?alt=media&token=dba677c7-f3cf-4535-8066-f7f4a213ec0f'),
            Review('ขอโทษ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi03.JPG?alt=media&token=591b8a32-b300-484e-a082-4ba0a0e24700'),
            Re('เป็นห่วง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi04.JPG?alt=media&token=5bb16ec1-3699-4c5c-9511-c52968a0490c'),
            Review('ขยัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi05.JPG?alt=media&token=e3a24ec0-5438-4b18-9999-bb1c3664f4e9'),
            Re('ประหยัด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi06.JPG?alt=media&token=1d010822-fb2a-44eb-9635-f354349eb103'),
            Review('ซื่อสัตย์', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi07.JPG?alt=media&token=235ba7ce-10de-4396-9dc5-90e35403d19a'),
            Re('มีวินัย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi08.JPG?alt=media&token=1fb56981-de84-4ad8-8458-3678df064885'),
            Review('สุภาพ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi09.JPG?alt=media&token=85738ab0-628e-49c0-9a71-b33f0351c585'),
            Re('สามัคคี', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi10.JPG?alt=media&token=c51682ba-e52b-4a07-b992-557da26f197f'),
            Review('มีน้ำใจ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi11.JPG?alt=media&token=52115708-2bbd-49ba-b1a7-ab99484ad0a8'),
            Re('ดูแล', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi12.JPG?alt=media&token=797934b1-527f-4a8f-a90e-4edeba5c92ea'),
            Review('ร่าเริงแจ่มใส', 'ahttps://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi13.JPG?alt=media&token=2c7b34c2-9deb-4315-a1af-af42af8f599d'),
            Re('ตื่นนอน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi14.JPG?alt=media&token=870978a5-a92c-4a76-88ff-4988ee32ecfc'),
            Review('เข้านอน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi15.JPG?alt=media&token=ff39158d-e1ef-4328-9c61-5a4839894695'),
            Re('ล้างหน้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi16.JPG?alt=media&token=8ba1d1bb-7df8-4b26-abb3-7f511ac99bdc'),
            Review('แปรงฟัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi17.JPG?alt=media&token=a12c7023-4f6c-4bf2-8b39-56424d64926e'),
            Re('อาบน้ำ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi18.JPG?alt=media&token=fba790d1-ee39-473b-b13d-e11d72c52f3b'),
            Review('ถูสบู่', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi19.JPG?alt=media&token=bc774810-d224-4053-a6a3-1792c290cdfd'),
            Re('สระผม', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi20.JPG?alt=media&token=bc814a61-9d26-4afc-ac5e-c23de07f84d3'),
            Review('แต่งตัว', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi21.JPG?alt=media&token=5d155788-01f3-4e59-a8a2-cb7b50a5b3b6'),
            Re('อุจจาระ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi22.JPG?alt=media&token=37bc6be1-5641-4f16-87ae-056915f3b64e'),
            Review('ปัสสาวะ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi23.JPG?alt=media&token=8aac7d84-3b4b-4ca5-8afd-5cdbf213caa0'),
            Re('ล้างมือ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi24.JPG?alt=media&token=9e2feaef-a62c-4ff8-b758-99f8563b6275'),
            Review('ป้องกัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi25.JPG?alt=media&token=6bbb6911-d272-46f1-ac11-6dc702e54dbb'),
            Re('ทำอาหาร', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi26.JPG?alt=media&token=329c58d6-7302-4fd0-be13-ead0e787ec2b'),
            Review('รับประทาน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi27.JPG?alt=media&token=c4664f56-5343-46fc-aabb-edd2d6f39850'),
            Re('ล้างจาน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi28.JPG?alt=media&token=78a78cda-8930-4876-9020-8534ddfa2604'),
            Review('กวาดบ้าน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi29.JPG?alt=media&token=fced094e-c6ae-4a15-8d95-f0c9dafb2617'),
            Re('ซักผ้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi30.JPG?alt=media&token=41c06d1e-b619-44f5-bb55-9e5725168878'),
            Review('รดน้ำต้นไม้', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi31.JPG?alt=media&token=0868d304-7edc-4719-9970-acb9271de658'),
            Re('ออกกำลังกาย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi32.JPG?alt=media&token=4114cd44-cc39-4766-abec-0852b03eec0e'),
            Review('งดบุหรี่', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi33.JPG?alt=media&token=279060d6-48ff-44b6-b41d-edd29ca5d198'),
            Re('งดสุรา', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi34.JPG?alt=media&token=9d0a129b-fe24-4808-ba37-879adcdcc3c3'),
            Review('งดสารเสพติด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi35.JPG?alt=media&token=769eb5e4-251c-46d8-bfbd-f23024382062'),
            Re('งดการพนัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi36.JPG?alt=media&token=e5493860-576b-41a6-a1ac-bfb9b35a2c8c'),
            Review('ไม่ประมาท', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fi%2Fi37.JPG?alt=media&token=ab9fcb8c-0a8d-4ca8-831d-570fdbae1faa'),
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
//                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
                  fit: BoxFit.cover, image: NetworkImage(_imageUrl)
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
//                  fit: BoxFit.cover, image: AssetImage(_imageUrl) //จัดขนาดภาพ
                  fit: BoxFit.cover, image: NetworkImage(_imageUrl)
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
