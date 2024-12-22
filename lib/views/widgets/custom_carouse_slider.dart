import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/widgets/custom_category_item.dart';

class CustomCarouseSlider extends StatelessWidget {
  const CustomCarouseSlider({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/images/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/images/entertainment.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/images/4.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/images/lio.jpg',
      categoryName: 'Sports',
    ),
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
          reverse: true,
        ),
        items: categories.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return CustomCategoryItem(
                categoryModel: url,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
