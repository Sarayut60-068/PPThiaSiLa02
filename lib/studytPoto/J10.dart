import 'package:flutter/material.dart';

import '../study.dart';

class J10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'J10',
      home: Scaffold(
        appBar: AppBar(
          title: Text('เบ็ตเตล็ด'),
          backgroundColor: Colors.redAccent,
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
            Review('ขี้เกียจ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj01.JPG?alt=media&token=d01891f4-1327-4d75-92e7-569e44d2226e'),
            Re('เสียใจ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj02.JPG?alt=media&token=64719434-55d1-4d5c-9b87-eb562d000752'),
            Review('กลัว', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj03.JPG?alt=media&token=b5d054e6-c540-49b8-82b5-66ff83d41e5c'),
            Re('โกรธ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj04.JPG?alt=media&token=9a30e48c-1b04-4faf-aaa1-315dd508a4a9'),
            Review('ยา', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj05.JPG?alt=media&token=81b12e73-686e-4922-8f53-77fb09ad1e05'),
            Re('ปวดฟัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj06.JPG?alt=media&token=7b0239f6-8e18-442e-a04f-db8d94ddd8d1'),
            Review('ปวดหลัง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj07.JPG?alt=media&token=b6c565c2-ec21-4360-b8db-683d5ab0a4a3'),
            Re('ท้องอืด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj08.JPG?alt=media&token=b8dfd9f7-491b-4931-bf98-c39fdbc81bab'),
            Review('ท้องเสีย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj09.JPG?alt=media&token=07bb4dbb-6570-48e4-8d5e-8835e5ce6b20'),
            Re('คลื่นไส้', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj10.JPG?alt=media&token=5da6a30b-c802-42f0-bb03-ff2bfa6caee4'),
            Review('ปวดประจำเดือน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj11.JPG?alt=media&token=1a111433-2159-4d7e-99c4-7e8a58dd6bb6'),
            Re('ปวดแผล', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj12.JPG?alt=media&token=051fa85f-8056-45f8-acf9-e62c490609ac'),
            Review('ไข้เลือดออก', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj13.JPG?alt=media&token=1b80a177-59f2-469d-a2ca-79de9f98e233'),
            Re('ประจำเดือน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj14.JPG?alt=media&token=52d5f656-c6f7-4ebb-9e35-c856a4430e81'),
            Review('กีฬา', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj15.JPG?alt=media&token=9d47f9c9-d484-4e14-aeae-1a839d448050'),
            Re('เดิน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj16.JPG?alt=media&token=1018f6d1-6310-41bf-a5f2-281c3c31849c'),
            Review('วิ่ง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj17.JPG?alt=media&token=4427fc6c-d3c7-4507-955e-ce7126e38961'),
            Re('ยืน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj18.JPG?alt=media&token=aa77e4d9-022f-428b-81cf-564064b34e3f'),
            Review('พูด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj20.JPG?alt=media&token=ef5d693d-9e48-4e09-bbb9-28dc2315fd8d'),
            Re('กฎหมาย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj21.JPG?alt=media&token=65a97482-f52b-49e1-996b-450c990fbe4c'),
            Review('บัตรประจำตัวประชาชน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj22.JPG?alt=media&token=cece1d75-03c3-4fbf-888f-19f321747c6d'),
            Re('บัตรประจำตัวคนพิการ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj23.JPG?alt=media&token=b0903b55-d141-4435-8556-381d53195dde'),
            Review('บัตรประกันสุขภาพ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj24.JPG?alt=media&token=9d296464-f1bb-4785-aed5-9fca35981796'),
            Re('การประกันชีวิต', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj25.JPG?alt=media&token=d33fa3d6-9d47-4c03-9b92-73ee54b4edd6'),
            Review('ตรวจสุขภาพประจำปี', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj26.JPG?alt=media&token=d75d676b-571f-413c-a91b-5466fc56362b'),
            Re('ร่างกาย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj27.JPG?alt=media&token=b1163d34-aa0e-4e48-b31b-9ae979b4026a'),
            Review('แข็งแรง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj28.JPG?alt=media&token=2475c4eb-16aa-4d4e-a1cb-986ed4d6977a'),
            Re('ฟัน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj29.JPG?alt=media&token=0d7c96a4-5e42-45e4-b399-659bf1039897'),
            Review('ศาสนา', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj30.JPG?alt=media&token=ba925372-129d-4304-8ce0-a602b0727a53'),
            Re('แต่งงาน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj31.JPG?alt=media&token=9683fdbd-4a45-41f9-8bea-a3607ffb81a4'),
            Review('ขโมย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj32.JPG?alt=media&token=3045d40f-6e26-420e-9a8b-06612dda5b08'),
            Re('หิว', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj33.JPG?alt=media&token=630dff27-0d19-464f-9afa-2f039006cd58'),
            Review('จำคุก', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj34.JPG?alt=media&token=a8a594a1-ace3-47dd-a690-3cbd2b39ae3c'),
            Re('อร่อย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj35.JPG?alt=media&token=36f0d300-27ad-4432-9422-ca5afe6f9279'),
            Review('ไม่อร่อย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj36.JPG?alt=media&token=1c9c03fd-ee8c-4c7e-937b-44725e732018'),
            Re('อุบัติเหตุ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj37.JPG?alt=media&token=c11772d7-028b-49cb-abb4-51b766e737c4'),
            Review('ต้นไม้', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj38.JPG?alt=media&token=ab09b448-4802-43ad-b538-7e57b8d44eba'),
            Re('น้ำท่วม', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj39.JPG?alt=media&token=9e5bf354-a9b5-46d9-9a62-49189d69db49'),
            Review('ขาย', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj40.JPG?alt=media&token=0334aecd-8f17-47de-b7ef-991496d8d353'),
            Re('ซื้อ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj41.JPG?alt=media&token=86ed0cd1-2eaf-4d29-a6e4-a7a9a4275a21'),
            Review('สะอาด', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj42.JPG?alt=media&token=90572c2a-9b15-4a22-80d4-2dee5adb2168'),
            Re('เปิดบัญชีใหม่', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj43.JPG?alt=media&token=c747226e-1ea1-40b8-9e17-c27a45dd6f44'),
            Review('ฝากเงิน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj44.JPG?alt=media&token=31d33e0d-e3a2-49b2-80ed-0d4d353ded34'),
            Re('บัตร ATM', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj45.JPG?alt=media&token=a881c711-4a92-4ba2-961c-2f59f8bc46f0'),
            Review('ถอนเงิน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj46.JPG?alt=media&token=6f289843-5d45-4dde-8ffc-73065db7335a'),
            Re('รถจักรยาน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj47.JPG?alt=media&token=02b218f5-f01b-45ab-89a0-4f6c94f54481'),
            Review('รถไฟ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj48.JPG?alt=media&token=b42a9bd3-22ff-44f5-b9b6-a21dfe0c582c'),
            Re('รถจักรยานยนต์', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj49.JPG?alt=media&token=3eb2c349-0310-41b4-a802-db6ff4a79934'),
            Review('นั่ง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj51.JPG?alt=media&token=c6957d64-32fc-43ce-80e1-3c366fde6411'),
            Re('สี', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj50.JPG?alt=media&token=0a9719ff-3b13-4dec-bcf1-840c0a93f9d9'),
            Review('สีเขียว', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj52.jpg?alt=media&token=9e41c3dc-78d4-416b-bd8f-66a628ac68de'),
            Re('สีเหลือง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj53.jpg?alt=media&token=abba1cce-f40e-4d40-aa36-8f2235481393'),
            Review('สีม่วง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj54.jpg?alt=media&token=ff5d5263-4671-46fc-a516-0fbaa437c18a'),
            Re('สีส้ม', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj55.jpg?alt=media&token=0f30c305-fb4f-4db5-a62c-5d25a434db81'),
            Review('สีน้ำเงิน', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj56.jpg?alt=media&token=0f267771-159a-4faa-bdd4-70213a7c9dc6'),
            Re('สีแดง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj57.jpg?alt=media&token=e18410ed-7569-43b4-ab26-a0788beadcad'),
            Review('สีฟ้า', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj58.jpg?alt=media&token=491cff93-3945-45c4-8622-736b921c3283'),
            Re('สีน้ำตาล', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj59.jpg?alt=media&token=5dc7c5be-c0a3-4a22-9092-8b4ef60525e4'),
            Review('สีขาว', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj60.jpg?alt=media&token=89ea8e0a-20cd-4b04-af08-84124e01491d'),
            Re('สีดำ', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fj%2Fj19.jpg?alt=media&token=340793bf-b2e8-4209-a3a6-40f219162a7f'),
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
            color: Colors.blue,
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
