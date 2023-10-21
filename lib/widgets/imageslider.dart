import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../data/data-image-slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  DataImageSlider imageSlider = DataImageSlider();
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var imageList = imageSlider.imageList;
    var judul = imageSlider.judul;
    return Column(
      children: [
        CarouselSlider(
          items: imageList.asMap().entries.map((entry) {
            final int index = entry.key;
            final String image = entry.value;
            final String title = judul[index];
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  image,
                  fit: BoxFit.cover,
                  height: 200.0, // Sesuaikan dengan kebutuhan
                ),
                Container(
                  color: Colors.black
                      .withOpacity(0.4), // Warna latar belakang teks
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
                  color: _currentIndex == index
                      ? Colors.blue
                      : Colors
                          .grey, // Sesuaikan dengan warna yang Anda inginkan
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
