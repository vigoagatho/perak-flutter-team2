import 'package:aninext/pages/animepage.dart';
import 'package:aninext/pages/foryoupage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
          ),
          Container(
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor:Colors.redAccent ,
                tabs: [
                  Tab(
                    child: Container(
                      child: Text('Untuk Anda', 
                      style: TextStyle(color: Colors.black, fontSize: 15),),),),
                  Tab(child: Container(
                    child: Text('Anime', 
                    style: TextStyle(color: Colors.black, fontSize: 15),),))]
                    ),
          ),
          Expanded(
            child: TabBarView(
              controller:tabController , 
              children: [
                ForYouPage(),
                AnimePage()
              ]
            )
          )
        ],
      ),
    );
  }
}