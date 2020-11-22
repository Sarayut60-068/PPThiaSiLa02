import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../chewie_list_item.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import


class cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แมว'),
      ),
      body: Center(
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Review('กระถิน', 'assets/images/potoTSL/d/d01.JPG'),
                  ChewieListItem(
                    videoPlayerController: VideoPlayerController.asset(
                      'assets/videos/difficult/di1/di001.mp4',
                    ),
                    looping: true,
                  ),
//                  ChewieListItem(
//                    videoPlayerController: VideoPlayerController.network(
//                      'https://drive.google.com/file/d/14MakqqBAj7-s-jo5JBUxv-iPTkMYHAmF/preview',
//                    ),
//                  ),
                ],
              ),
            ],
          ),
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
            color: Colors.lightBlue,
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
            color: Colors.lightGreenAccent,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
