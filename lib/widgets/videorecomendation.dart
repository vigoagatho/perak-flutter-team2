import 'package:aninext/data/user-data.dart';
import 'package:flutter/material.dart';

class VideoRecomendation extends StatefulWidget {
  const VideoRecomendation({super.key});

  @override
  State<VideoRecomendation> createState() => _VideoRecomendationState();
}

class _VideoRecomendationState extends State<VideoRecomendation> {
  @override
  Widget build(BuildContext context) {
    UserData userData = UserData();
    var gambar = userData.image;
    var view = userData.view;
    var title = userData.title;
    var name = userData.name;

    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: gambar.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.network(gambar[index], width: 150, height: 100,),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title[index],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    Text(name[index], 
                    overflow: TextOverflow.ellipsis, 
                    maxLines: 2,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.play_circle_outline, size: 15,),
                        Text(view[index], style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        );
      },
    );
  }
}