import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../chewie_list_item.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('โรงพยาบาล (Hospital)'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: ListView(
          children: [
            Review('โรงพยาบาล', 'assets/images/potoTSL/f/f20.JPG'),

            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                'assets/videos/medium/me3/me016.mp4',
              ),
              looping: true,
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

