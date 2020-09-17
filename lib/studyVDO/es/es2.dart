import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/es/video_player.dart";

class es2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ทักทายทั่วไป'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ขอโทษ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es016.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ขอบคุณ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es017.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ชื่อ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es018.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'โชคดี',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es019.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ใช่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es020.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'พบ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es021.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ไม่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es022.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ไม่เป็นไร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es023.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'สนุก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es024.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'สวัสดี (เพื่อน)',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es025.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'สวัสดี',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es2/es026.mp4',
            ),
            looping: true,
          ),

//          ChewieListItem(
//            // This URL doesn't exist - will display an error
//            videoPlayerController: VideoPlayerController.network(
//              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/error.mp4',
//            ),
//          ),
        ],
      ),
    );
  }
}
