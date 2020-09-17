import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/me/video_player.dart";

class me3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สถานที่'),
      ),
      body: ListView(
        children: <Widget>[
          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ที่ทำการไปรษณีย์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me011.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ที่ว่าการอำเภอ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me012.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'บ้าน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me013.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'มหาวิทยาลัย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me014.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'ร้านขายของ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me015.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'โรงพยาบาล',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me016.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'โรงเรียน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me017.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'โรงแรม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me018.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'วัด',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me019.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'วิทยาลัย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me020.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'สถานีขนส่ง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me021.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'สถานีตำรวจ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me022.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'สนามบิน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me023.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'สวนสัตว์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me024.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'หอพัก',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/medium/me3/me025.mp4',
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
