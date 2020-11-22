import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:thaisila02/chewie_list_item.dart';
// ignore: unused_import
import "package:thaisila02/studyVDO/es/video_player.dart";

class es1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ญาติ กับ คำถาม'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text(
              'คน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'คุณ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es02.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ใคร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es03.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ญาติ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es04.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ดิฉัน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es05.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ทำไม',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es06.mp4',
            ),
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ที่ไหน',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es07.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'น้อง',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es08.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ปู่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es09.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'ผู้ใหญ่',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es010.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'พวกเรา',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es011.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'เมื่อไร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es012.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'อย่างไร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es013.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'อะไร',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es014.mp4',
            ),
            looping: true,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'อายุ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/easy/es1/es015.mp4',
            ),
            looping: true,
          ),
        ],
      ),
    );
  }
}
