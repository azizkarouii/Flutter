import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/pages/home_page.dart';
//import 'package:projet/projet_e_commerce/pages/barre_navigation.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-commerce App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
