import 'package:flutter/material.dart';

import '../study.dart';


class B2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ของใช้ เครื่องแต่งกาย'),
          backgroundColor: Colors.purpleAccent,
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
           children: [
            Review('ของใช้', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb01.JPG?alt=media&token=c4766cfc-cb12-49dd-bf1a-7df1642162ab'),
            Re('จวัก ', "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb02.JPG?alt=media&token=bdad1326-9993-4fbc-889c-10938e5798f0"),
            Review('ทัพพี ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb03.JPG?alt=media&token=6ff073f9-e814-4620-858b-4b124104cc92'),
            Re('ตะหลิว ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb04.JPG?alt=media&token=9f3e021b-d5cc-4d79-a9e8-99b0522c7924'),
            Review('แก้ว ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb05.JPG?alt=media&token=76ecadb6-ae58-42cb-aa08-efe97764832a'),
            Re('จาน ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb06.JPG?alt=media&token=48ae9d5b-a000-4feb-9bdf-dcbf7df53388'),
            Review('เก้าอี้ ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb07.JPG?alt=media&token=7b174ec4-589a-45a5-9b73-be191dae71bb'),
            Re('โทรทัศน์ ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb08.JPG?alt=media&token=4bcbc089-dd6f-43c0-b1c8-7fa4536a9e0e'),
            Review('คอมพิวเตอร์ ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb09.JPG?alt=media&token=1f28d788-1c93-43c4-ad5e-75f4e0a7c274'),
            Re('โทรศัพท์ ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb10.JPG?alt=media&token=33d91377-45dd-487a-9f06-e4a22e53d037'),
            Review('ยาสีฟัน ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb11.JPG?alt=media&token=bce15ddf-c428-40c7-ad53-ac54b206e03a'),
            Re('สบู่ ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb12.JPG?alt=media&token=571e6a7b-360b-43e0-b6c0-8d86cad766ae'),
            Review('แชมพูสระผม', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb13.JPG?alt=media&token=55952e48-2bd2-42f0-a788-7a5f4561e7fa'),
            Re('ผ้าขาวม้า ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb14.JPG?alt=media&token=d1020862-fb3a-4aa7-89cd-c6bdcc4cf648'),
            Review('หวี', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb15.JPG?alt=media&token=ffc6107b-08d0-4c68-ab6a-e093e098809a'),
            Re('ถุงเท้า ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb16.JPG?alt=media&token=c1bf2da4-dfcd-474d-95b6-8806a6136c30'),
            Review('รองเท้า ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb17.JPG?alt=media&token=593d89d8-050b-4eb6-80d4-a95cd905872e'),
            Re('เข็มขัด ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb18.JPG?alt=media&token=35ed3183-fff3-4887-95f8-9e0de6599093'),
            Review('กางเกงขาสั้น ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb19.JPG?alt=media&token=ac31118f-d4b1-435c-a15a-c98df96a8b98'),
            Re('เสื้อยืด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb20.JPG?alt=media&token=108270d3-1fc6-46f0-bbde-da5ae87be7f0'),
            Review('กระโปรง ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb21.JPG?alt=media&token=703e071b-2183-4b80-b4ca-bf6479958ada'),
            Re('ผ้าถุง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fb%2Fb22.JPG?alt=media&token=3a77895b-9411-4e86-82ef-4a678b13bac5'),
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
                  fit: BoxFit.cover,
                  image: NetworkImage(_imageUrl) //จัดขนาดภาพ
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
                  fit: BoxFit.cover,
//                  image: AssetImage(_imageUrl) //จัดขนาดภาพ
                  image: NetworkImage(_imageUrl)
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

