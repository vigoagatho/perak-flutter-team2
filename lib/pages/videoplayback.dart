import 'package:aninext/data/api/api.dart';
import 'package:aninext/data/user-data.dart';
import 'package:aninext/pages/tabPages/comments.dart';
import 'package:aninext/pages/tabPages/videodetail.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayback extends StatefulWidget {
  const VideoPlayback({Key? key}) : super(key: key);

  @override
  State<VideoPlayback> createState() => _VideoPlaybackState();
}

class _VideoPlaybackState extends State<VideoPlayback>with TickerProviderStateMixin {
  final videoURL = "https://www.youtube.com/watch?v=6BCyjUvurPk";
  late YoutubePlayerController _controller;
  final baseUrl = UserData();

  @override
  void initState(){
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false
      )
      );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    TabController tabController =TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(17),
          ),
          Container(
            child: Stack(
              children:[ YoutubePlayer(controller: _controller,
              showVideoProgressIndicator: true,
              onReady:()=> debugPrint('Ready'),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back, color: Colors.white)),
              )
              ]
            ),
          ),
          Container(
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.blueGrey,
              tabAlignment: TabAlignment.start,
              tabs: [
                Tab(
                    child: Container(
                      child: Text(
                        'Info',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Tab(
                      child: Container(
                    child: Text(
                      'Komentar',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ))
              ]),
          ),
          Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [VideoDetail(userData: baseUrl,), Comments()]))
        ],
      ),
    );
  }
}