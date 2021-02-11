import 'package:flutter/material.dart';

import '../study.dart';

class G7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G7',
      home: Scaffold(
        appBar: AppBar(
          title: Text('จำนวนนับ ตัวเลข'),
          backgroundColor: Colors.greenAccent,
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
            Review('หนึ่ง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg01.JPG?alt=media&token=9300734b-c65e-412b-8ae3-5d006e523319'),
            Re('สอง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg02.JPG?alt=media&token=d0821363-6f39-408f-afeb-a895e18cd454'),
            Review('สาม', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg03.JPG?alt=media&token=0fbcc284-8c9a-4538-bfed-65a3c79e41cc'),
            Re('สี่', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg04.JPG?alt=media&token=0fc1fe25-0bdc-434b-a4b2-ce27bc7eae6b'),
            Review('ห้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg05.JPG?alt=media&token=e910c253-e2dd-4323-b2be-0a6d4496bb3e'),
            Re('หก', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg06.JPG?alt=media&token=547581da-cab8-49a3-8d52-acfe585e2b2e'),
            Review('เจ็ด ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg07.JPG?alt=media&token=83190abf-1a38-44d9-aee3-d5693adf8dcc'),
            Re('แปด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg08.JPG?alt=media&token=b7303784-af6b-4a94-a840-4666184268a4'),
            Review('เก้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg09.JPG?alt=media&token=15ff30fd-aece-4536-97d4-685ef133ec7f'),
            Re('สิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg10.JPG?alt=media&token=86eaed99-bef5-43c9-94ff-2ba14fa00bd5'),
            Review('ยี่สิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg11.JPG?alt=media&token=dae167a8-2bff-4153-b7b1-eb42b824f30d'),
            Re('สามสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg12.JPG?alt=media&token=964da7c4-bea5-4fb7-8c8e-732065770fd2'),
            Review('สี่สิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg13.JPG?alt=media&token=e6a8e28c-6c7b-4093-bc40-43de5546f578'),
            Re('ห้าสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg14.JPG?alt=media&token=3ea5e05d-dd83-4dd7-ad66-37333a943ee5'),
            Review('หกสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg15.JPG?alt=media&token=13ed34a4-ae11-4879-b8b1-137f7f77d55c'),
            Re('เจ็ดสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg16.JPG?alt=media&token=f564d304-126c-4020-a308-c4487c6db4fa'),
            Review('แปดสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg17.JPG?alt=media&token=f90c4b2c-51f3-41c3-8512-3da4050c21cd'),
            Re('เก้าสิบ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg18.JPG?alt=media&token=465af8a6-f22d-4c49-8323-e048cfbc2698'),
            Review('หนึ่งร้อย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg19.JPG?alt=media&token=ede8b0f2-ef04-4b8e-a8b7-0c40ae141dd4'),
            Re('หนึ่งพัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg20.JPG?alt=media&token=fa334124-5dbc-4ac8-9e44-c151c8caf575'),
            Review('หนึ่งหมื่น', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg21.JPG?alt=media&token=c205afca-af99-45d6-9d35-40ca21a1631c'),
            Re('หนึ่งแสน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg22.JPG?alt=media&token=dbebce79-49d2-4fc4-8f42-d077e6aa6ad5'),
            Review('หนึ่งล้าน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg23.JPG?alt=media&token=5de38384-ebb1-4153-b0b9-63c7e5f11b53'),
            Re('สิบห้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fg%2Fg24.JPG?alt=media&token=f2e74281-8b3c-48cb-b96c-4df9789461fe'),
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
            color: Colors.blueGrey,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
