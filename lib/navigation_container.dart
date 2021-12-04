import 'package:aris_sneakers_shop/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  List<Widget> _appPages = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  void _onIconTapped (int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
