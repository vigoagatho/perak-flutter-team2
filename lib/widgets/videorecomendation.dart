import 'dart:convert';
import 'package:aninext/data/api/api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/model/userdata.dart';

class VideoRecomendation extends StatelessWidget {
  final ApiAnime apiAnime;
  const VideoRecomendation({Key? key, required this.apiAnime}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<UserData>>(
      future: fetchData(),
      builder: (context , snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            final userData = snapshot.data!;
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: userData.length,
              itemBuilder: (context,index){
                return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.network(userData[index].image, width: 150, height: 100,),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userData[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    Text(userData[index].name, 
                    overflow: TextOverflow.ellipsis, 
                    maxLines: 2,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.play_circle_outline, size: 15,),
                        Text(userData[index].view, style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        );
              }
            );
          }
      });
  }
  Future<List<UserData>> fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? cachedData = prefs.getString('userDataData');

    if (cachedData != null && cachedData.isNotEmpty) {
      List<UserData> cachedList = userDataFromJson(cachedData);
      return cachedList;
    }

    final response = await apiAnime.listOfUserData();

    if (response.isNotEmpty) {
      prefs.setString('userDataData', jsonEncode(response));
      return response;
    } else {
      throw Exception('Failed to load data');
    }
  }
}