import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        child: CarouselSlider(
          options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),

          items: [
            Image.asset(ListImagescarousel[0], fit: BoxFit.cover),
            Image.asset(ListImagescarousel[1], fit: BoxFit.cover),
            Image.asset(ListImagescarousel[2], fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
