import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/me/video_player.dart";

class me2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อาหาร'),
      ),
      body: ListView(
        children: <Widget>[
          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ขนมปัง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me001.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ข้าว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me002.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ข้าวเหนียว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me003.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ไข่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me004.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ซอสมะเมือเทศ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me005.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'นม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me006.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'น้ำปลา',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me007.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'บะหมี่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me008.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'พริกไทย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me009.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'อาหาร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me2/me010.mp4',
            ),
            looping: true,
          ),

//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
//            ),
//          ),
        ],
      ),
    );
  }
}
