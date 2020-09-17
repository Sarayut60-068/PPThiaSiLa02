import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/di/video_player.dart";

class di3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ธรรมชาติ'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text(
              'อากาศ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di033.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ธรรมชาติ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di034.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ฤดู',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di035.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ดวงอาทิตย์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di036.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ดวงจันทร์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di037.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ดวงดาว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di038.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ท้องฟ้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di039.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ฝน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di040.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'แสงแดด',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di041.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ลม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di042.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ร้อน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di043.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ต้นไม้',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di044.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'น้ำ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di045.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'แม่น้ำ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di046.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ทะเล',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di047.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ทะเลสาบ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di048.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'น้ำท่วม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di3/di049.mp4',
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
