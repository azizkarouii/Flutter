import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/myWidgets/image_carousel.dart';
import 'package:projet/projet_e_commerce/myWidgets/categories_grid.dart';
import 'package:projet/projet_e_commerce/myWidgets/brands_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.home, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const ImageCarousel(),

              const SizedBox(height: 30),

              const CategoriesGrid(),

              const SizedBox(height: 20),

              const BrandsGrid(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
