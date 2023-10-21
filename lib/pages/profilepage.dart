import 'package:aninext/widgets/historycard.dart';
import 'package:aninext/widgets/profilecard.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        actions:[
          IconButton(onPressed: (){} , icon: Icon(Icons.qr_code_scanner), color: Colors.black,),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined), color: Colors.black,)
        ],
      ),
      body: ListView(
        children: [
          ProfileCard(),
          Column(
            children: [
              const ListTile(
                leading: Icon(Icons.history, color: Colors.black,),
                title: Text('Riwayat'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HistoryCard(imageUrl: 'https://images5.alphacoders.com/132/1325882.png', title: 'Spy X Family S1 E12'),
                    HistoryCard(imageUrl: 'https://i.pinimg.com/736x/86/71/99/8671992e3ac1984bf83d25d29074330d.jpg', title: 'Dragon Ball Kai E64'),
                    HistoryCard(imageUrl: 'https://images6.fanpop.com/image/photos/40600000/OPM-Wallpaper-one-punch-man-40613919-1680-1050.jpg', title: 'One Punch Man S1 E12'),
                    HistoryCard(imageUrl: 'https://m.media-amazon.com/images/I/71jt8+W2XHL.jpg', title: 'One Piece E1031'),
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(Icons.download_for_offline_outlined, color: Colors.black,),
                title: Text('Unduhan Saya'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),
              const ListTile(
                leading: Icon(Icons.favorite_border_outlined, color: Colors.black,),
                title: Text('Favorit Saya'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),
              const ListTile(
                leading: Icon(Icons.video_library_outlined, color: Colors.black,),
                title: Text('Video Saya'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),
              SizedBox(height: 20,),
              const ListTile(
                leading: Icon(Icons.settings_outlined, color: Colors.black,),
                title: Text('Pengaturan'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,)
              ),
              const ListTile(
                leading: Icon(Icons.question_mark_outlined, color: Colors.black,),
                title: Text('Pusat Bantuan'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,)
              ),
              const ListTile(
                leading: Icon(Icons.chat_bubble_outline, color: Colors.black,),
                title: Text('Feedback'),
                trailing: Icon(Icons.navigate_next, color: Colors.black,)
              ),

              SizedBox(height: 25,),
              ElevatedButton(
                onPressed: (){}, 
                child: Text('Keluar'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(250, 40),
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white
                ),
                ),
              SizedBox(height: 15,)
            ],
          ),
        ],
      ),
    );
  }
}