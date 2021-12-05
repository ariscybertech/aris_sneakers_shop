import 'package:flutter/material.dart';

class Shoe {
  final String name;
  final String imageName;
  final String description;
  final String price;
  final Color bgColor;
  final List<Color> availableColors;

  Shoe(
    this.name,
    this.imageName,
    this.description,
    this.price,
    this.bgColor,
    this.availableColors,
  );
}

List<Shoe> categoriesShoes = [
  Shoe(
    'Black Sneakers',
    'assets/1.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Colors.grey[400],
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/2.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Colors.amber[400],
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/3.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Color(0xFFF616163),
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/4.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Colors.black45,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/5.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Colors.red[400],
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/6.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Colors.yellow,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/1.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Color(0xFFF616163),
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/2.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Color(0xFFF616163),
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    'Black Sneakers',
    'assets/3.png',
    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam diam ut aliquam mauris ut aliquam mauris ut odio',
    '\$625',
    Color(0xFFF616163),
    [Colors.red, Colors.pink, Colors.yellow],
  ),
];
