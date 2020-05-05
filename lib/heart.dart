import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'home.dart';

class heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Heart',
      home: Scaffold(
        appBar: AppBar(
            title: Text('บันทึกโพสต์'),
            backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.purple,
        ),
        body: ListView(
          children: <Widget>[
            Review('ภาษามือ สวัสดี ','https://hilight.kapook.com/img_cms2/user/annira/%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B2%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B9%80%E0%B8%9A%E0%B8%B7%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%95%E0%B9%89%E0%B8%99.jpg'),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  final String _text;
  final String _imageUrl;

  const Review (this._text,this._imageUrl,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15), //กำหนดขนาดขอบ
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),//กำหนดขอบมน
              image: DecorationImage(
                  fit: BoxFit.cover, //จัดขนาดภาพ
                  image: NetworkImage(
                      _imageUrl)),
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
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),

          ),
        ],
      ),
    );
  }
}