import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeroSlider extends StatelessWidget {
  HeroSlider({Key? key}) : super(key: key);

  final images = [
    // 'lib/assets/swamyji.webp',
    // 'lib/assets/guru.jpeg',
    'https://wikimylinks.com/wp-content/uploads/2020/09/Swami-Nithyananda-Images-62-600x600.jpg',
    'https://i1.sndcdn.com/artworks-000453686256-4abst7-t500x500.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        // viewportFraction: 1,
        // enlargeCenterPage: true,
        viewportFraction: 1.6,
      ),
      itemCount: 2,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        // child: Image.asset(images[itemIndex]),
        child: CachedNetworkImage(
          imageUrl: images[itemIndex],
          errorWidget: (context, url, error) => Center(
            child: Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
