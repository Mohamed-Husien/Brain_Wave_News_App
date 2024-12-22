import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouseSlider extends StatelessWidget {
  CustomCarouseSlider({super.key});
  final List<String> imageUrls = [
    'assets/images/wallpaperflare.com_wallpaper (12).jpg'
        'assets/images/wallpaperflare.com_wallpaper (12).jpg'
        'assets/images/wallpaperflare.com_wallpaper (12).jpg'
        'assets/images/wallpaperflare.com_wallpaper (12).jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: imageUrls.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return CustomCategoryItem(
                image: url,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Sports',
          )
        ],
      ),
    );
  }
}
