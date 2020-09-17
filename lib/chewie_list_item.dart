//import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//
////chewie_list_item.dart
//
//class video extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Video Example',
//      home: VideoExample(),
//    );
//  }
//}
//
//class VideoExample extends StatefulWidget {
//  @override
//  VideoState createState() => VideoState();
//}
//
//class VideoState extends State<VideoExample> {
//  VideoPlayerController playerController;
//  VoidCallback listener;
//
//  @override
//  void initState() {
//    super.initState();
//    listener = () {
//      setState(() {});
//    };
//  }
//
//  void createVideo() {
////    if (playerController == null) {
////      playerController = VideoPlayerController.network(
////          "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
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
//
//    if (playerController == null) {
//      playerController = VideoPlayerController.asset(
//          "assets/videos/testt/001.mp4")
//        ..addListener(listener)
//        ..setVolume(1.0)
//        ..initialize()
//        ..play();
//    } else {
//      if (playerController.value.isPlaying) {
//        playerController.pause();
//      } else {
//        playerController.initialize();
//        playerController.play();
//      }
//    }
//
//  }
//
//
//
//  @override
//  void deactivate() {
//    playerController.setVolume(0.0);
//    playerController.removeListener(listener);
//    super.deactivate();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Video Example'),
//      ),
//      body: Center(
//          child: AspectRatio(
//              aspectRatio: 16 / 9,
//              child: Container(
//                child: (playerController != null
//                    ? VideoPlayer(
//                  playerController,
//                )
//                    : Container()),
//              ))),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          createVideo();
//          playerController.play();
//        },
//        child: Icon(Icons.play_arrow),
//      ),
//    );
//  }
//}
import "package:chewie/chewie.dart";
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieListItem extends StatefulWidget {
  // This will contain the URL/asset path which we want to play
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: widget.looping,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
