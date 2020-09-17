import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/di/video_player.dart";

class di1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อาชีพ'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text(
              'อาชีพ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di001.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ข้าราชการ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di002.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ทหาร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di003.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'แพทย์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di004.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ครู',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di005.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'พยาบาล',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di006.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ตำรวจ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di007.mp4',
            ),
            looping: true,
          ),

          new RaisedButton(
            color: Colors.red,
            child: Text(
              'บุรุษไปรษณีย์',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di008.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'พิพากษา',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di009.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ช่างไฟฟ้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di010.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ช่างทำผม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di011.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'พ่อค้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di012.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'แม่ค้า',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di013.mp4',
            ),
            looping: true,
          ),

          RaisedButton(
            color: Colors.red,
            child: Text(
              'ลูกจ้าง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/difficult/di1/di014.mp4',
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
