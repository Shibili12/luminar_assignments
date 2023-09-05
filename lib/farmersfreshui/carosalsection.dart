import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class Carousalsection extends StatelessWidget {
  const Carousalsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: CarouselSlider(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/vegitables.jpg"))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/fruits.jpg"))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/fish.jpg"))),
          ),
        ],
        initialPage: 0,
        enableAutoSlider: true,
        viewportFraction: 1,
        autoSliderTransitionCurve: Curves.linear,
      ),
    );
  }
}
