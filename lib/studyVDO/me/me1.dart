import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/me/video_player.dart";

class me1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ร่างกาย'),
      ),
      body: ListView(
        children: <Widget>[
          new RaisedButton(
            color: Colors.red,
            child: Text(
              'คิ้ว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me01.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'จมูก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me02.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ท้อง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me03.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'เท้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me04.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'นิ้วมือ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me05.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ปาก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me06.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ผม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me08.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ฟัน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me09.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ร่างกาย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me10.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ลูกกระเดือก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me11.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'เลือด',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me12.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ศีรษะ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me13.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'หน้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me14.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'หน้าอก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me15.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'หลัง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me16.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'หัวเข่า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me17.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'หู',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me18.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ไหล่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me19.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'เอว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me1/me20.mp4',
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
