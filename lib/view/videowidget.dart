import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube/view/loading.dart';

class VideoPostWidget extends StatefulWidget {
  VideoPostWidget({this.url, this.uid});

  String url;
  String uid;

  @override
  VideoPostWidgetState createState() => VideoPostWidgetState();
}

class VideoPostWidgetState extends State<VideoPostWidget> {
  //
  CachedVideoPlayerController _controller;
  Future<void> _initializeCachedVideoPlayerFuture;

  @override
  void initState() {
    _controller = CachedVideoPlayerController.network(widget.url);
    //_controller = CachedVideoPlayerController.asset("videos/sample_video.mp4");

    _initializeCachedVideoPlayerFuture = _controller.initialize().then((_) {});

    super.initState();
    print('what the ${widget.url}');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool volumn = true;
  bool play = true;
  @override
  Widget build(BuildContext context) {
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    return VisibilityDetector(
      key: Key(widget.uid),
      onVisibilityChanged: (visibility) {
        /// if 80% of video is visible on screen
        // if (visibility.visibleFraction == 1) {
        //   _controller.play();
        // } else {
        //   _controller.pause();
        // }
      },
      child: FutureBuilder(
        future: _initializeCachedVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Stack(
                children: [
                  Loading(),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(
                        Icons.video_call_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.setVolume(1);
                    });
                  },
                  child: Stack(
                    children: [
                      CachedVideoPlayer(_controller),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.width * 0.95,
                child: Container(height: 70, width: 70, child: Loading()),
              ),
            );
          }
        },
      ),
    );
  }

  printDuration(Duration duration, Duration endDuration, context) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (twoDigitMinutes != '00') {
      return "$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitSeconds";
    }
  }
}
