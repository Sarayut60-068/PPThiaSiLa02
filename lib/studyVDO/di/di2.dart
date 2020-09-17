import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/di/video_player.dart";

class di2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ผลไม้'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ผลไม้',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di015.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'กระท้อน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di016.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'กล้วย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di017.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ขนุน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di018.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'แตงโมง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di019.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ทับทิม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di020.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ฝรั่ง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di021.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'มะพร้าว',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di022.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'มะม่วง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di023.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'มะละกอ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di024.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ลำไย',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di025.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ลิ้นจี่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di026.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'สตรอเบอร์รี่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di027.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ส้ม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di028.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ส้มโอ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di029.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'สับปะรด',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di030.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'องุ่น',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di031.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'แอปเปิ้ล',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di2/di032.mp4',
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
