import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../chewie_list_item.dart';
import 'package:thaisila02/studytPoto/C3.dart';

class brother extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('น้อง (brother)'),
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
            Review('น้อง', 'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/poto-image%2Fc%2Fc05.JPG?alt=media&token=7c753e0c-b97e-47fc-b8d3-ae73e8187a2e'),

            ChewieListItem(
              // This URL doesn't exist - will display an error
              videoPlayerController: VideoPlayerController.network(
                'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/C%2F%E0%B8%99%E0%B9%89%E0%B8%AD%E0%B8%87.mp4?alt=media&token=0c360e41-7e39-4293-b161-0315359c9021',
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
            color: Colors.red,
            alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}

