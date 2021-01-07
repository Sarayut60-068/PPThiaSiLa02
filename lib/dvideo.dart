//import 'package:flutter/material.dart';
//import 'package:thaisila02/studyVDO/di/di1.dart';
//import 'package:thaisila02/studyVDO/di/di2.dart';
//import 'package:thaisila02/studyVDO/di/di3.dart';
//import 'package:thaisila02/studyVDO/es/es1.dart';
//import 'package:thaisila02/studyVDO/es/es2.dart';
//import 'package:thaisila02/studyVDO/es/es3.dart';
//import 'package:thaisila02/studyVDO/es/es4.dart';
//import 'package:thaisila02/studyVDO/me/me1.dart';
//import 'package:thaisila02/studyVDO/me/me2.dart';
//import 'package:thaisila02/studyVDO/me/me3.dart';
//import 'package:thaisila02/video.dart';
//import 'package:video_player/video_player.dart';
//import 'chewie_list_item.dart';
//
//
////chewie_list_item.dart
//
////class eevideo extends StatelessWidget {
////  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////      title: 'Video Example',
////      home: VideoExample(),
////    );
////  }
////}
//
////class VideoExample extends StatefulWidget {
////  @override
////  VideoState createState() => VideoState();
////}
////
////class VideoState extends State<VideoExample> {
////  VideoPlayerController playerController;
////  VoidCallback listener;
////
////  @override
////  void initState() {
////    super.initState();
////    listener = () {
////      setState(() {});
////    };
////  }
////
////  void createVideo() {
////
//////    if (playerController == null) {
//////      playerController = VideoPlayerController.network(
//////          "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
//////        ..addListener(listener)
//////        ..setVolume(1.0)
//////        ..initialize()
//////        ..play();
//////    } else {
//////      if (playerController.value.isPlaying) {
//////        playerController.pause();
//////      } else {
//////        playerController.initialize();
//////        playerController.play();
//////      }
//////    }
////
////    if (playerController == null) {
////      playerController = VideoPlayerController.asset(
////          "assets/videos/testt/001.mp4")
////        ..addListener(listener)
////        ..setVolume(1.0)
////        ..initialize()
////        ..play();
////    } else {
////      if (playerController.value.isPlaying) {
////        playerController.pause();
////      } else {
////        playerController.initialize();
////        playerController.play();
////      }
////    }
////
////  }
////
////
////
////  @override
////  void deactivate() {
////    playerController.setVolume(0.0);
////    playerController.removeListener(listener);
////    super.deactivate();
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////      appBar: AppBar(
////        title: Text('Video Example'),
////      ),
////      body: Center(
////          child: AspectRatio(
////              aspectRatio: 16 / 9,
////              child: Container(
////                child: (playerController != null
////                    ? VideoPlayer(
////                  playerController,
////                )
////                    : Container()),
////              ))),
////      floatingActionButton: FloatingActionButton(
////        onPressed: () {
////          createVideo();
////          playerController.play();
////        },
////
////        child: Icon(Icons.play_arrow),
////      ),
////    );
////  }
////}
//
//
//class dvideo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
////    return Scaffold(
////      appBar: AppBar(
////        title: Text('Video Player'),
////      ),
////      body: ListView(
////        children: <Widget>[
////          ChewieListItem(
////            videoPlayerController: VideoPlayerController.asset(
////              'assets/videos/testt/001.mp4',
////            ),
////            looping: true,
////          ),
////          ChewieListItem(
////            videoPlayerController: VideoPlayerController.network(
////              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
////            ),
////          ),
////          ChewieListItem(
////            // This URL doesn't exist - will display an error
////            videoPlayerController: VideoPlayerController.network(
////              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/error.mp4',
////            ),
////          ),
////        ],
////      ),
////    );
////  }
////}
//
//    return MaterialApp(
//      title: 'สื่อการสอน VDO ระดับงปานกลาง',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('สื่อการสอนแบบ VDO "ระดับยาก"'),
//          backgroundColor: Colors.purple,
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => video()));
//          },
//          child: Icon(Icons.arrow_back),
//          backgroundColor: Colors.purple,
//        ),
//        body: ListView(
//          children: <Widget>[
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => di1()));
//              },
//              color: Colors.green,
//              child: Text(
//                'อาชีพ',
//                style: TextStyle(color: Colors.white),
//              ),
//            ),
//
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => di2()));
//              },
//              color: Colors.lightBlueAccent,
//              child: Text(
//                'ผลไม้',
//                style: TextStyle(color: Colors.white),
//              ),
//            ),
//
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => di3()));
//              },
//              color: Colors.red,
//              child: Text(
//                'ธรรมชาติ',
//                style: TextStyle(color: Colors.white),
//              ),
//            ),
//
//          ],
//        ),
//      ),
//    );
//  }
//}