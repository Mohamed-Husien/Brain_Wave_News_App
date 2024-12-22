import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/custom_carouse_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomCarouseSlider(),
    );
  }
}
