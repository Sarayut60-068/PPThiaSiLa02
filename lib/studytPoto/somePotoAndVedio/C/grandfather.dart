import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../chewie_list_item.dart';
import 'package:thaisila02/studytPoto/C3.dart';

class grandfather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('ปู่ (grandfather)'),
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
            Review('ปู่', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fc%2Fc06.JPG?alt=media&token=d802d696-7f11-4011-94e2-c0de862c63e1'),

            ChewieListItem(
              // This URL doesn't exist - will display an error
              videoPlayerController: VideoPlayerController.network(
                'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/C%2F%E0%B8%9B%E0%B8%B9%E0%B9%88.mp4?alt=media&token=54428f50-f678-4604-abd8-0c2304d738a8',
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

