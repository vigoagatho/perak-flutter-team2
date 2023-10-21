import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 20, 10),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            backgroundImage: NetworkImage('https://i.imgur.com/5wXGjk8.jpeg'),
            radius: 40,
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('mr_daijobu', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Row(
              children: [
                Column(
                  children: [
                    Text('50'),
                    Text('Video')
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('250'),
                    Text('Pengikut')
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('1000'),
                    Text('Mengikuti')
                  ],
                ),
                
              ],
            ),
            ],
          )
        ],
      ),
    );
  }
}