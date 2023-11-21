import 'dart:convert';

import 'package:aninext/data/api/api.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/model/dataimageslider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late List<DataImageSlider> items;
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  late Future<List<DataImageSlider>> _dataImageSlider;

  @override
  void initState() {
    super.initState();
    _dataImageSlider = ApiAnime().listOfDataImageSlider();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DataImageSlider>>(
      future: _dataImageSlider,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        } else {
          var imageList = snapshot.data!;

          return Column(
            children: [
              CarouselSlider(
                items: imageList.asMap().entries.map((entry) {
                  final int index = entry.key;
                  final String image = imageList[index].image;
                  final String title = imageList[index].title;
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.4),
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                carouselController: _controller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  final int index = entry.key;
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(index),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Colors.blue : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        }
      },
    );
  }

  Future<List<DataImageSlider>> fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? cachedData = prefs.getString('dataImageSliderData');

    if (cachedData != null && cachedData.isNotEmpty) {
      List<DataImageSlider> cachedList = dataImageSliderFromJson(cachedData);
      return cachedList;
    }

    final response = await ApiAnime().listOfDataImageSlider();

    if (response.isNotEmpty) {
      prefs.setString('dataImageSliderData', jsonEncode(response));
      return response;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
