import 'package:aninext/widgets/historycard.dart';
import 'package:aninext/widgets/profilecard.dart';
import 'package:flutter/material.dart';

import '../data/api/api.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final baseUrl = ApiAnime();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          ProfileCard(),
          Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                title: Text('Riwayat'),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ),
              HistoryCard(apiAnime: baseUrl),
              const ListTile(
                leading: Icon(
                  Icons.download_for_offline_outlined,
                  color: Colors.black,
                ),
                title: Text('Unduhan Saya'),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
                title: Text('Favorit Saya'),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.video_library_outlined,
                  color: Colors.black,
                ),
                title: Text('Video Saya'),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                  title: Text('Pengaturan'),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  )),
              const ListTile(
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.black,
                  ),
                  title: Text('Pusat Bantuan'),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  )),
              const ListTile(
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  title: Text('Feedback'),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Keluar'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(250, 40),
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
