import 'package:flutter/material.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  int clickedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: clickedIndex,
        onTap: (index) {
          setState(() {
            clickedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.purple,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Panier",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
