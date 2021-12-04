import 'package:aris_sneakers_shop/navigation_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aris());
}

class Aris extends StatelessWidget {
  const Aris({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aris Sneakers Shop',
      theme: ThemeData(
        primaryColor: Color(0xFFF3F6F8),
      ),
      home: NavigationContainer(),
    );
  }
}