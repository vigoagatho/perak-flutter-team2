import 'package:aninext/data/api/api.dart';
import 'package:aninext/data/model/userdata.dart';
import 'package:aninext/widgets/videorecomendation.dart';
import 'package:flutter/material.dart';

class VideoDetail extends StatefulWidget {
  final UserData userData;
  const VideoDetail({super.key, required this.userData });

  @override
  State<VideoDetail> createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  final baseUrl = ApiAnime();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left : 8.0),
            child: Text('Kematian Gento Dunia Sang Gojo Satoru?!', 
            style: TextStyle(
              fontSize: 16,
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 7),
            child: Row(
              children: [
                Icon(Icons.play_circle_outlined, size: 15,),
                SizedBox(width: 5,),
                Text('18.567', style: TextStyle(fontSize: 12),),
                SizedBox(width: 15,),
                Icon(Icons.date_range_outlined, size: 15,),
                Text('18 November 2023', style: TextStyle(fontSize: 12),)
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [Icon(Icons.thumb_up), Text('1.5K')],
                ),
                Column(
                  children: [Icon(Icons.favorite_rounded), Text('Favorit')],
                ),
                Column(
                  children: [Icon(Icons.download), Text('Unduh')],
                ),
                Column(
                  children: [Icon(Icons.share), Text('Bagikan')],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text('Direkomendasikan Untukmu', style: TextStyle(fontWeight: FontWeight.w600),),
            ),
          VideoRecomendation(apiAnime: baseUrl,)
        ],
      )
    );
  }
}