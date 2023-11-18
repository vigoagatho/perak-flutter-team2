import 'package:aninext/data/api/api.dart';
import 'package:flutter/material.dart';

import '../data/model/userdata.dart';

class UserWidget extends StatelessWidget {
  final ApiAnime apiAnime;
  const UserWidget({Key? key, required this.apiAnime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // UserData userData = UserData();
    // var gambar = userData.image;
    // var view = userData.view;
    // var comment = userData.comment;
    // var title = userData.title;
    // var userProfile = userData.userProfile;
    // var name = userData.name;
    return FutureBuilder<List<UserData>>(
        future: apiAnime.listOfUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            final userData = snapshot.data!;
            return ListView.builder(
                itemCount: userData.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 280,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          NetworkImage(userData[index].image))),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Opacity(
                                        opacity: 0.5,
                                        child: Container(
                                            height: 30, color: Colors.black)),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          margin:
                                              EdgeInsets.fromLTRB(8, 0, 6, 3),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                  Icons
                                                      .play_circle_fill_outlined,
                                                  color: Colors.white),
                                              Text(
                                                userData[index].view,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 60,
                                          margin:
                                              EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.comment,
                                                  color: Colors.white),
                                              Text(
                                                userData[index].comment,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(userData[index].userprofile)),
                            title: Text(
                              userData[index].title,
                              maxLines: 2,
                            ),
                            subtitle: Text(userData[index].name),
                            trailing: Icon(Icons.more_vert),
                          )
                        ],
                      ),
                    ),
                  );
                });
          }
        });
  }
}
