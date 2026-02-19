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
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Action pour le panier
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Carousel d'images - bannière centrale
              const SizedBox(height: 20),
              const ImageCarousel(),

              // Espacement entre les sections
              const SizedBox(height: 30),

              // Section Catégories
              const CategoriesGrid(),

              // Espacement entre les sections
              const SizedBox(height: 20),

              // Section Marques Populaires
              const BrandsGrid(),

              // Espacement final
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
