# Documentation E-Commerce App - Atelier 04

## Vue d'ensemble
Application Flutter e-commerce avec page d'accueil suivant la maquette. Affichage centré des catégories et marques populaires.

## Structure des fichiers
```
lib/projet_e_commerce/
├── const/images.dart           # Images et noms des catégories/marques
├── pages/home_page.dart        # Page d'accueil principale  
└── myWidgets/
    ├── categories_grid.dart    # Grille des catégories
    └── brands_grid.dart        # Grille des marques
```

## Widgets principaux utilisés

### images.dart
- Structure List<Map<String, String>> pour stocker images + noms
- Centralise toutes les données

### CategoriesGrid et BrandsGrid  
- Widget : GridView.builder 
- Configuration : 3 colonnes, 2 lignes (grille 3x2)
- Design : Images avec overlay et texte superposé
- Centrage : Center widget pour centrer la grille

### HomePage
- Structure : SingleChildScrollView + Column
- Sections : Carousel + Catégories + Marques
- AppBar : Icône Home + Panier

## Implémentation selon la maquette
- Header bleu avec "Home" et icône panier
- Section Catégories (6 images en grille 3x2)
- Section Marques Populaires (6 images en grille 3x2) 
- Sections centrées
- Images uniquement (pas de footer)
- Design responsive

## Fonctionnalités
- Responsive : S'adapte à toutes les tailles d'écran
- Interactif : Tap sur les catégories/marques 
- Performance : Utilisation de GridView.builder pour l'optimisation