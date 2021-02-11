import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../chewie_list_item.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import

import 'package:thaisila02/studytPoto/C3.dart';

class teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('ครู (teacher)'),
          backgroundColor: Colors.purpleAccent,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => C3() ));
                })
          ],
        ),
        body: ListView(
          children: [
            Review('ครู', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fc%2Fc10.JPG?alt=media&token=d6c91e2c-0765-41eb-8f17-dfe98680a3f1'),

            ChewieListItem(
              // This URL doesn't exist - will display an error
              videoPlayerController: VideoPlayerController.network(
                'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/C%2F4%E0%B8%84%E0%B8%A3%E0%B8%B9.mp4?alt=media&token=f7852f46-1cf9-411a-99d4-f2fe8c6c7778',
              ),
            ),


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
                  fit: BoxFit.cover, image: NetworkImage(_imageUrl) //จัดขนาดภาพ
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

