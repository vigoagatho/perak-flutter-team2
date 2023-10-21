import 'package:flutter/material.dart';
import '../data/user-data.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserData userData = UserData();
    var gambar = userData.image;
    var view = userData.view;
    var comment = userData.comment;
    var title = userData.title;
    var userProfile = userData.userProfile;
    var name = userData.name;

    return ListView.builder(
        itemCount: gambar.length,
        scrollDirection: Axis.horizontal,
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
                              image: NetworkImage(gambar[index]))),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Opacity(
                                opacity: 0.5,
                                child:
                                    Container(height: 30, color: Colors.black)),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.fromLTRB(8, 0, 6, 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.play_circle_fill_outlined,
                                          color: Colors.white),
                                      Text(
                                        view[index],
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.comment, color: Colors.white),
                                      Text(
                                        comment[index],
                                        style: TextStyle(color: Colors.white),
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
                        backgroundImage: NetworkImage(userProfile[index])),
                    title: Text(
                      title[index],
                      maxLines: 2,
                    ),
                    subtitle: Text(name[index]),
                    trailing: Icon(Icons.more_vert),
                  )
                ],
              ),
            ),
          );
        });
  }
}
