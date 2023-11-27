import 'package:aninext/data/model/userdata.dart';
import 'package:aninext/pages/tabPages/comments.dart';
import 'package:aninext/pages/tabPages/videodetail.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayback extends StatefulWidget {
  final UserData userData;
  const VideoPlayback({Key? key, required this.userData}) : super(key: key);

  @override
  State<VideoPlayback> createState() => _VideoPlaybackState();
}

class _VideoPlaybackState extends State<VideoPlayback>with TickerProviderStateMixin {
  late YoutubePlayerController _controller;

  @override
  void initState(){
    final videoID = YoutubePlayer.convertUrlToId(widget.userData.video);

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
                  children: [VideoDetail(userData: widget.userData,), Comments()]))
        ],
      ),
    );
  }
}